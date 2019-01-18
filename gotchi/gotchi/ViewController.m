//
//  ViewController.m
//  gotchi
//
//  Created by Sam Meech-Ward on 2019-01-17.
//  Copyright © 2019 meech-ward. All rights reserved.
//

#import "ViewController.h"
#import "Pet.h"
#import "JoelViewModel.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *petImageView;
@property (nonatomic, strong) Pet *joel;
@property (nonatomic, strong) JoelViewModel *joelViewModel;

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.
  self.joel = [[Pet alloc] init];
  self.joelViewModel = [[JoelViewModel alloc] initWithPet:self.joel];
  
  [self updatePetMood];
  
  [self.joel addObserver:self forKeyPath:@"mood" options:0 context:nil];
}

- (IBAction)panPet:(UIPanGestureRecognizer *)sender {
  CGPoint velocity = [sender velocityInView:self.petImageView];
  NSLog(@"%@", NSStringFromCGPoint(velocity));
  [self.joel strokeXVelocity:velocity.x yVelocity:velocity.y];
}

- (void)updatePetMood {
  NSLog(@"updatePetMood");
  self.petImageView.image = self.joelViewModel.image;
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context {
  NSLog(@"observeValueForKeyPath");
  if ([keyPath isEqualToString:@"mood"] && [object isEqual:self.joel]) {
    [self updatePetMood];
  }
}


@end
