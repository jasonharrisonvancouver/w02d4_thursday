//
//  Car.m
//  Thursday
//
//  Created by Sam Meech-Ward on 2019-01-17.
//  Copyright © 2019 meech-ward. All rights reserved.
//

#import "Car.h"

@implementation Car

- (instancetype)init
{
  self = [super init];
  if (self) {
    _mileage = 0;
  }
  return self;
}


- (void)drive {
  [NSTimer scheduledTimerWithTimeInterval:1.0 repeats:YES block:^(NSTimer * _Nonnull timer) {
    self.mileage++;
  }];
}

@end
