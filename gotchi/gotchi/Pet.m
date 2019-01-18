//
//  Pet.m
//  gotchi
//
//  Created by Sam Meech-Ward on 2019-01-17.
//  Copyright © 2019 meech-ward. All rights reserved.
//

#import "Pet.h"

@interface Pet()

@property (nonatomic, readwrite) PetMood mood;
@property (nonatomic) NSTimer *timer;
@property (nonatomic) NSDate *lastTimeMadeGrumpy;

@end

@implementation Pet

- (instancetype)init
{
  self = [super init];
  if (self) {
    _timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(updateTimer) userInfo:nil repeats:YES];
  }
  return self;
}

- (void)strokeXVelocity:(float)xVelocity yVelocity:(float)yVelocity {
  if (xVelocity > 100 || yVelocity > 100) {
    self.mood = PetMoodGrumpy;
    self.lastTimeMadeGrumpy = [NSDate date];
  } else if (self.mood == PetMoodNeutral) {
    self.mood = PetMoodHappy;
  }
}

- (void)updateTimer {
  if ([self.lastTimeMadeGrumpy timeIntervalSinceNow] < -3 && self.mood == PetMoodGrumpy) {
    self.mood = PetMoodNeutral;
  }
}

@end
