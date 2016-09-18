//
//  ViewController.m
//  CAEmitterLayerDemo
//
//  Created by  on 16/9/18.
//  Copyright © 2016年 fuugouryoku. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self fire];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)fire
{
    
    self.view.layer.contents = (__bridge id _Nullable)([UIImage imageNamed:@"樱花树2"].CGImage);
    CAEmitterLayer *emitterLayer = [CAEmitterLayer layer];
    emitterLayer.frame = self.view.bounds;
    [self.view.layer addSublayer:emitterLayer];
    //设置发射位置
    emitterLayer.position = CGPointMake(100, -30);
    //渲染模式
    emitterLayer.renderMode = kCAEmitterLayerOutline;
    
    emitterLayer.emitterShape = kCAEmitterLayerLine;
    
    //真正显示的CELL
    
    CAEmitterCell *emitterCell = [CAEmitterCell emitterCell];
    emitterCell.contents =(__bridge id)([UIImage imageNamed:@"樱花瓣2"].CGImage);
    emitterCell.scale = 0.02;
    emitterCell.scaleRange = 0.5;
    
    emitterCell.birthRate = 50;
    emitterCell.lifetime = 80;
    //    emitterCell.color = [UIColor colorWithRed:1 green:0.5 blue:1 alpha:1].CGColor;
    
    
    
    //透明度递减速率
    emitterCell.alphaSpeed = -0.01;
    //初始速度
    emitterCell.velocity = 80;
    emitterCell.emissionRange = 60;
    //活动范围
    emitterCell.emissionRange = M_PI ;
    
    //自旋角度
    emitterCell.spin = M_PI_4;
    
    
    //阴影效果
    emitterLayer.shadowOffset = CGSizeMake(3, 3);
    emitterLayer.shadowRadius = 8;
    emitterLayer.shadowOpacity = 1.0;
    emitterLayer.shadowColor = [UIColor whiteColor].CGColor;
    
    
    emitterLayer.emitterCells = @[emitterCell];
    
    
}


@end
