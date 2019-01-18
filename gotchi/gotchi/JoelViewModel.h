//
//  Joel.h
//  gotchi
//
//  Created by Sam Meech-Ward on 2019-01-17.
//  Copyright © 2019 meech-ward. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Pet.h"

NS_ASSUME_NONNULL_BEGIN

@interface JoelViewModel : NSObject

- (instancetype)initWithPet:(Pet *)pet;

@property (nonatomic, readonly) UIImage *image;
@property (nonatomic, readonly) Pet *pet;

@end

NS_ASSUME_NONNULL_END
