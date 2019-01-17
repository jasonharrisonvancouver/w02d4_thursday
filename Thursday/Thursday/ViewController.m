//
//  ViewController.m
//  Thursday
//
//  Created by Sam Meech-Ward on 2019-01-17.
//  Copyright © 2019 meech-ward. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.
  
  __block int i = 0;
  __block NSString *string = @"";
  
  void (^doSomething)(void) = ^void(void) {
    NSLog(@"do something");
    i++;
    string = @"";
    self.view.backgroundColor = [UIColor blueColor];
  };
  
  NSLog(@"%@", doSomething);
  
//  [UIView animateWithDuration:1.0 animations:doSomething];
  
  
  void (^performSomeTask)(NSNotification *) = ^(NSNotification * _Nonnull note) {
    doSomething();
  };

  
  [[NSNotificationCenter defaultCenter] addObserverForName:@"com.Thursday.applicationWillResignActive" object:nil queue:nil usingBlock:performSomeTask];
  
  
  
  [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(appWillResign) name:@"com.Thursday.applicationWillResignActive" object:nil];

  [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(appWillResign) name:UIKeyboardDidShowNotification object:nil];
}

- (void)appWillResign {
  NSLog(@"Do things when the app is about to be closed");
  
  [[NSNotificationCenter defaultCenter] removeObserver:self name:@"com.Thursday.applicationWillResignActive"  object:nil];
}


@end
