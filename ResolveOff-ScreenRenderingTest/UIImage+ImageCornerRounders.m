//
//  UIImage+ImageCornerRounders.m
//  ResolveOff-ScreenRenderingTest
//
//  Created by fyc on 2018/10/17.
//  Copyright © 2018年 FuYaChen. All rights reserved.
//

#import "UIImage+ImageCornerRounders.h"

@implementation UIImage (ImageCornerRounders)

- (UIImage*)fc_imageAddCornerWithRadius:(CGFloat)radius andSize:(CGSize)size{
    
    CGRect rect =CGRectMake(0,0, size.width, size.height);
    
    UIGraphicsBeginImageContextWithOptions(size,NO, [UIScreen mainScreen].scale);
    
    CGContextRef ctx =UIGraphicsGetCurrentContext();
    
    UIBezierPath* path = [UIBezierPath bezierPathWithRoundedRect:rect byRoundingCorners:UIRectCornerAllCorners cornerRadii:CGSizeMake(radius, radius)];
    
    CGContextAddPath(ctx,path.CGPath);
    
    CGContextClip(ctx);
    
    [self drawInRect:rect];
    
    CGContextDrawPath(ctx,kCGPathFillStroke);
    
    UIImage* newImage =UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    
    return newImage;
    
}

- (UIImage*)fc_imageAddCornerWithRadius:(CGFloat)radius {
    CGSize size = self.size;
    CGRect rect =CGRectMake(0,0, size.width, size.height);
    
    UIGraphicsBeginImageContextWithOptions(size,NO, [UIScreen mainScreen].scale);
    
    CGContextRef ctx =UIGraphicsGetCurrentContext();
    
    UIBezierPath* path = [UIBezierPath bezierPathWithRoundedRect:rect byRoundingCorners:UIRectCornerAllCorners cornerRadii:CGSizeMake(radius, radius)];
    
    CGContextAddPath(ctx,path.CGPath);
    
    CGContextClip(ctx);
    
    [self drawInRect:rect];
    
    CGContextDrawPath(ctx,kCGPathFillStroke);
    
    UIImage* newImage =UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    
    return newImage;
    
}
- (UIImage*)wd_roundImageAddCornerWithRadius:(CGFloat)radius andSize:(CGSize)size{
    
    CGRect rect =CGRectMake(0,0, size.width, size.height);
    
    UIGraphicsBeginImageContextWithOptions(size,NO, [UIScreen mainScreen].scale);
    
    CGContextRef ctx =UIGraphicsGetCurrentContext();
    
    UIBezierPath* path = [UIBezierPath bezierPathWithRoundedRect:rect byRoundingCorners:UIRectCornerAllCorners cornerRadii:CGSizeMake(radius, radius)];
    
    CGContextAddPath(ctx,path.CGPath);
    
    CGContextClip(ctx);
    
    [self drawInRect:rect];
    
    CGContextDrawPath(ctx,kCGPathFillStroke);
    
    UIImage* newImage =UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    
    return newImage;
    
}
@end
