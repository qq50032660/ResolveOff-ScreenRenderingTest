//
//  CornerImageView.m
//  ResolveOff-ScreenRenderingTest
//
//  Created by fyc on 2018/10/17.
//  Copyright © 2018年 FuYaChen. All rights reserved.
//

#import "CornerImageView.h"

@implementation CornerImageView
- (id)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
    }
    return self;
}
- (void)drawRect:(CGRect)rect {
    
    CGRect bounds =self.bounds;
    
    [[UIBezierPath bezierPathWithRoundedRect:rect cornerRadius:40.0] addClip];
    
    [self.image drawInRect:bounds];
    
}
//- (void)drawRect:(CGRect)rect {
//
//    UIBezierPath *maskPatch = [UIBezierPath bezierPathWithRoundedRect:rect byRoundingCorners:UIRectCornerTopLeft | UIRectCornerTopRight cornerRadii:CGSizeMake(10, 10)]; //这里的第二个参数可以设置圆角的位置，这里是设置左上和右上两个圆角
//
//    CAShapeLayer *maskLayer = [[CAShapeLayer alloc]init];
//
//    maskLayer.frame = self.bounds;
//    
//    maskLayer.path = maskPatch.CGPath;
//
//    self.layer.mask = maskLayer;
//
//}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
