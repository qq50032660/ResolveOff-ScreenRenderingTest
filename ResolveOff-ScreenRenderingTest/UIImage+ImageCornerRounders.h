//
//  UIImage+ImageCornerRounders.h
//  ResolveOff-ScreenRenderingTest
//
//  Created by fyc on 2018/10/17.
//  Copyright © 2018年 FuYaChen. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreGraphics/CoreGraphics.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (ImageCornerRounders)

- (UIImage*)fc_imageAddCornerWithRadius:(CGFloat)radius andSize:(CGSize)size;

/**
 *  图片切边
 *  radius 切边的半径
 *  size   imageview的size(self.size并非imageview中image的size)
 */
- (UIImage*)wd_roundImageAddCornerWithRadius:(CGFloat)radius andSize:(CGSize)size;
@end

NS_ASSUME_NONNULL_END
