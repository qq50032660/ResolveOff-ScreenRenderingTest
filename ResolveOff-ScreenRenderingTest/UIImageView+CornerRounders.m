//
//  UIImageView+CornerRounders.m
//  ResolveOff-ScreenRenderingTest
//
//  Created by fyc on 2018/10/17.
//  Copyright © 2018年 FuYaChen. All rights reserved.
//

#import "UIImageView+CornerRounders.h"
#import "UIImage+ImageCornerRounders.h"
#import "FCCorner.h"

@implementation UIImageView (CornerRounders)

- (void)fc_addCornerRadius:(CGFloat)radius {
    
    self.image= [self.image fc_imageAddCornerWithRadius:radius andSize:self.bounds.size];
    
}
- (void)fc_addCornerRadius:(CGFloat)radius

               borderWidth:(CGFloat)borderWidth

           backgroundColor:(UIColor*)backgroundColor

              borderCorlor:(UIColor*)borderColor {
    
    UIImageView *imageView = [[UIImageView alloc] initWithImage:[self  fc_drawRectWithRoundedCornerRadius:radius
                                                                 
                                                                                              borderWidth:borderWidth
                                                                 
                                                                                          backgroundColor:backgroundColor
                                                                 
                                                                                             borderCorlor:borderColor]];

    [self insertSubview:imageView atIndex:0];
    
}

- (UIImage*)fc_drawRectWithRoundedCornerRadius:(CGFloat)radius

                                   borderWidth:(CGFloat)borderWidth

                               backgroundColor:(UIColor*)backgroundColor

                                  borderCorlor:(UIColor*)borderColor {
    
    CGSize sizeToFit =CGSizeMake([FCCorner pixel:self.bounds.size.width],self.bounds.size.height);
    
    CGFloat halfBorderWidth = borderWidth /2.0;
    
    UIGraphicsBeginImageContextWithOptions(sizeToFit,NO, [UIScreen mainScreen].scale);
    
    CGContextRef context =UIGraphicsGetCurrentContext();
    
    CGContextSetLineWidth(context, borderWidth);
    
    CGContextSetStrokeColorWithColor(context, borderColor.CGColor);
    
    CGContextSetFillColorWithColor(context, backgroundColor.CGColor);
    
    CGFloat width = sizeToFit.width, height = sizeToFit.height;
    
    CGContextMoveToPoint(context, width - halfBorderWidth, radius + halfBorderWidth);//准备开始移动坐标
    
    CGContextAddArcToPoint(context, width - halfBorderWidth, height - halfBorderWidth, width - radius - halfBorderWidth, height - halfBorderWidth, radius);
    
    CGContextAddArcToPoint(context, halfBorderWidth, height - halfBorderWidth, halfBorderWidth, height - radius - halfBorderWidth, radius);//左下角角度
    
    CGContextAddArcToPoint(context, halfBorderWidth, halfBorderWidth, width - halfBorderWidth, halfBorderWidth, radius);//左上角
    
    CGContextAddArcToPoint(context, width - halfBorderWidth, halfBorderWidth, width - halfBorderWidth, radius + halfBorderWidth, radius);//右上角
    
    CGContextDrawPath(UIGraphicsGetCurrentContext(),kCGPathFillStroke);
    
    UIImage*image =UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    
    return image;
    
}

@end
