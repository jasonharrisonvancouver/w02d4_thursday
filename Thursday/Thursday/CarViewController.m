//
//  CarViewController.m
//  Thursday
//
//  Created by Sam Meech-Ward on 2019-01-17.
//  Copyright © 2019 meech-ward. All rights reserved.
//

#import "CarViewController.h"
#import "Car.h"

@interface CarViewController ()

@property (nonatomic, strong) Car *car;
@property (weak, nonatomic) IBOutlet UILabel *mileageLabel;
@property (nonatomic, strong) NSMutableString *string;

@end

@implementation CarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
  
  self.car = [[Car alloc] init];
  [self.car addObserver:self forKeyPath:@"mileage" options:0 context:nil];
  
  self.string = @"".mutableCopy;
  [self.string addObserver:self forKeyPath:@"length" options:0 context:nil];
  
  
  [self.car drive];
  
  [self.mileageLabel setText:[NSString stringWithFormat:@"mileage: %i", self.car.mileage]];
}


- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
  NSLog(@"keypath %@", keyPath);
  [self.string appendString:@"🤗"];
  if ([keyPath isEqualToString:@"length"]) {
    
  }
  
  if ([keyPath isEqualToString:@"mileage"] && [object isEqual:self.car]) {
    NSLog(@"mileage changed %i", self.car.mileage);
    [self.mileageLabel setText:[NSString stringWithFormat:@"mileage: %i", self.car.mileage]];
  }
  
}


@end
