//
//  Car.h
//  Thursday
//
//  Created by Sam Meech-Ward on 2019-01-17.
//  Copyright © 2019 meech-ward. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Car : NSObject

@property (nonatomic, assign) int mileage;

- (void)drive;

@end

NS_ASSUME_NONNULL_END
