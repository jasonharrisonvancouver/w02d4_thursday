//
//  ConstrolsViewController.m
//  Thursday
//
//  Created by Sam Meech-Ward on 2019-01-17.
//  Copyright © 2019 meech-ward. All rights reserved.
//

#import "ConstrolsViewController.h"

@interface ConstrolsViewController ()

@property (nonatomic, weak) IBOutlet UIButton *button;
@property (weak, nonatomic) IBOutlet UIImageView *pickleRick;
@property (strong, nonatomic) IBOutlet UITapGestureRecognizer *tapGestureRecognizer;

@property (strong, nonatomic) UIPanGestureRecognizer *panGensture;

@end

@implementation ConstrolsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
  self.panGensture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(pan:)];
  [self.pickleRick addGestureRecognizer:self.panGensture];
}

- (void)pan:(UIPanGestureRecognizer *)gesture {
  NSLog(@"pan");
  
  if (gesture.state == UIGestureRecognizerStateBegan) {
    
  } else if (gesture.state == UIGestureRecognizerStateChanged) {
    CGPoint translation = [gesture translationInView:self.pickleRick];
    //
    self.pickleRick.center = CGPointMake(self.pickleRick.center.x + translation.x, self.pickleRick.center.y + translation.y);
    
    
    //    self.pickleImageView.transform = CGAffineTransformMakeTranslation(translation.x, translation.y);
    
    [gesture setTranslation:CGPointZero inView:self.pickleRick];
    //
  } else if (gesture.state == UIGestureRecognizerStateEnded) {
    
  }
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

*/
- (IBAction)longPressrick:(id)sender {
  NSLog(@"longPressrick");
}
- (IBAction)tappedRick:(id)sender {
  NSLog(@"tappedRick");
}

- (IBAction)swtichChanged {
  NSLog(@"swtichChanged");
}
- (IBAction)touchUpInside:(UIButton *)sender {
  [sender setTitle:@"touched:" forState:UIControlStateNormal];
  NSLog(@"touchUpInside");
}
- (IBAction)touchUpOutside:(id)sender {
  NSLog(@"touchUpOutside");
}
- (IBAction)valueChanged:(id)sender {
  NSLog(@"valueChanged");
}

@end
