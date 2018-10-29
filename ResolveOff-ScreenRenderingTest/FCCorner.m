//
//  FCCorner.m
//  ResolveOff-ScreenRenderingTest
//
//  Created by fyc on 2018/10/17.
//  Copyright © 2018年 FuYaChen. All rights reserved.
//

#import "FCCorner.h"

@implementation FCCorner

+ (CGFloat)ceilbyunit:(CGFloat)num unit:(double)unit {
    
    return num -modf(num, &unit) + unit;
    
}

+ (CGFloat)floorbyunit:(CGFloat)num unit:(double)unit {
    
    return num -modf(num, &unit);
    
}

+ (CGFloat)roundbyunit:(CGFloat)num unit:(double)unit {
    
    CGFloat remain =modf(num, &unit);
    
    if (remain > unit /2.0) {
        
        return [self ceilbyunit:num unit:unit];
        
    }else{
        
        return [self floorbyunit:num unit:unit];
        
    }
    
}
+ (CGFloat)pixel:(CGFloat)num {
    
    CGFloat unit;
    
    CGFloat scale = [[UIScreen mainScreen] scale];
    
    switch((NSInteger)scale) {
            
        case 1:
            
            unit =1.0/1.0;
            
            break;
            
        case 2:
            
            unit =1.0/2.0;
            
            break;
            
        case 3:
            
            unit =1.0/3.0;
            
            break;
            
        default:
            
            unit =0.0;
            
            break;
            
    }
    
    return [self roundbyunit:num unit:unit];
    
}





@end
