//
//  ViewController.m
//  ResolveOff-ScreenRenderingTest
//
//  Created by fyc on 2018/10/17.
//  Copyright © 2018年 FuYaChen. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+ImageCornerRounders.h"
#import "UIImageView+CornerRounders.h"
#import "UIView+CornerRounders.h"
#import "CornerImageView.h"
@interface ViewController ()

@end

@implementation ViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIImageView *v = [[UIImageView alloc]initWithFrame:CGRectMake(0, 100, 100, 200)];
    v.image = [UIImage imageNamed:@"111"];
    [self.view addSubview:v];
    
    UIImageView *v2 = [[UIImageView alloc]initWithFrame:CGRectMake(150, 100, 100, 200)];
    v2.image = [UIImage imageNamed:@"111"];
    [self.view addSubview:v2];
   
    [v fc_addCornerRadius:30];
    [v2 fc_addCornerRadius:40 borderWidth:5 backgroundColor:[UIColor blueColor] borderCorlor:[UIColor redColor]];
    
    UIImageView *v3 = [[UIImageView alloc]initWithFrame:CGRectMake(0, 400, 100, 200)];
    v3.image = [UIImage imageNamed:@"111"];
    v3.layer.masksToBounds = YES;
    v3.layer.cornerRadius = 30;
    [self.view addSubview:v3];
    [v3 wd_roundViewAddCornerWithRadius:30];
    
    UIView *v4 = [[UIView alloc]initWithFrame:CGRectMake(150, 400, 100, 200)];
    v4.backgroundColor = [UIColor purpleColor];
    [self.view addSubview:v4];
    [v4 wd_roundViewAddCornerWithRadius:50];
    
}


@end
