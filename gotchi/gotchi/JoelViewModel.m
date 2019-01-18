//
//  Joel.m
//  gotchi
//
//  Created by Sam Meech-Ward on 2019-01-17.
//  Copyright © 2019 meech-ward. All rights reserved.
//

#import "JoelViewModel.h"


@implementation JoelViewModel

- (instancetype)initWithPet:(Pet *)pet {
  self = [super init];
  if (self) {
    _pet = pet;
  }
  return self;
}

- (UIImage *)image {
  return [self imageForMood:self.pet.mood];
}

- (NSString *)imageNameForMood:(PetMood)mood {
  switch (mood) {
      case PetMoodSad: return @"sad";
      case PetMoodHappy: return @"happy";
      case PetMoodGrumpy: return @"angry";
      case PetMoodNeutral: return @"neutral";
  }
}

- (UIImage*)imageForMood:(PetMood)mood {
  return [UIImage imageNamed:[self imageNameForMood:mood]];
}

@end
