//
//  UIImageView+CornerRounders.h
//  ResolveOff-ScreenRenderingTest
//
//  Created by fyc on 2018/10/17.
//  Copyright © 2018年 FuYaChen. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreGraphics/CoreGraphics.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImageView (CornerRounders)
- (void)fc_addCornerRadius:(CGFloat)radius;
- (void)fc_addCornerRadius:(CGFloat)radius

               borderWidth:(CGFloat)borderWidth

           backgroundColor:(UIColor*)backgroundColor

              borderCorlor:(UIColor*)borderColor;
@end

NS_ASSUME_NONNULL_END
