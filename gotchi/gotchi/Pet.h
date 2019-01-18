//
//  Pet.h
//  gotchi
//
//  Created by Sam Meech-Ward on 2019-01-17.
//  Copyright © 2019 meech-ward. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, PetMood) {
  PetMoodNeutral,
  PetMoodGrumpy,
  PetMoodHappy,
  PetMoodSad
};

NS_ASSUME_NONNULL_BEGIN

@interface Pet : NSObject

@property (nonatomic, readonly) PetMood mood;

- (void)strokeXVelocity:(float)xVelocity yVelocity:(float)yVelocity;

@end

NS_ASSUME_NONNULL_END
