//
//  FCCorner.h
//  ResolveOff-ScreenRenderingTest
//
//  Created by fyc on 2018/10/17.
//  Copyright © 2018年 FuYaChen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface FCCorner : NSObject
+ (CGFloat)ceilbyunit:(CGFloat)num unit:(double)unit;
+ (CGFloat)floorbyunit:(CGFloat)num unit:(double)unit;
+ (CGFloat)roundbyunit:(CGFloat)num unit:(double)unit;
+ (CGFloat)pixel:(CGFloat)num;
@end

NS_ASSUME_NONNULL_END
