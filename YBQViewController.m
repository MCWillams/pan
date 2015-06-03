//
//  YBQViewController.m
//  pan
//
//  Created by 严必庆 on 15-6-3.
//  Copyright (c) 2015年 ___FULLUSERNAME___. All rights reserved.
//

#import "YBQViewController.h"

@interface YBQViewController ()
@property (strong, nonatomic) IBOutlet UIView *panView;

@end

@implementation YBQViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	UIPanGestureRecognizer *pan =[[UIPanGestureRecognizer alloc]initWithTarget:self action:@selector(panView:)];
    [self.panView addGestureRecognizer:pan];
    
}
-(void)panView:(UIPanGestureRecognizer *)pan{
    //1.
    CGPoint translation = [pan translationInView:pan.view];
    CGPoint center = pan.view.center;
    center.x += translation.x;
    center.y += translation.y;
    pan.view.center = center;
    //2
    [pan setTranslation:CGPointZero inView:pan.view];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
