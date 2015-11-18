//
//  LaunchViewController.m
//  YOHO
//
//  Created by Woz Wong on 15/11/18.
//  Copyright © 2015年 code4Fun. All rights reserved.
//

#import "LaunchViewController.h"
#import "MainViewController.h"
@interface LaunchViewController ()
@property (nonatomic, strong) UIImageView *launchView;
@property (nonatomic, weak) NSTimer *timer;
@property (nonatomic, strong) UIButton *boyButton;

@end

@implementation LaunchViewController

/**
 *  lazyLoad定时器
 */
-(NSTimer *)timer
{
    if (!_timer) {
        _timer = [NSTimer scheduledTimerWithTimeInterval:5.0 target:self selector:@selector(modalToMainView) userInfo:nil repeats:NO];
    }
    return _timer;
}

/**
 *  lazyLoad背景图片
 *
*/
- (UIImageView *)launchView
{
    if (!_launchView) {
        _launchView = [[UIImageView alloc] initWithFrame:self.view.bounds];
        _launchView.image = [UIImage imageNamed:@"01542fac357c8d5e12315fcffa756039c5"];
    }
    return _launchView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self addTimer];
    [self.view addSubview:self.launchView];
    [self addButton];
}

/**
 *  添加定时器,自动进入首页
 */
-(NSTimer *) addTimer
{
   return self.timer;
}

/**
 *  添加选择按钮
 */
- (void)addButton
{
    UIButton *boyButton = [[UIButton alloc] initWithFrame:CGRectMake(-170, 100, 714, 165)];
    [boyButton setImage:[UIImage imageNamed:@"entrance_1"] forState:UIControlStateNormal];
    [boyButton setImage:[UIImage imageNamed:@"entrance_highlight_1"] forState:UIControlStateHighlighted];
    [self.view addSubview:boyButton];
    [boyButton addTarget:self action:@selector(modalToMainView) forControlEvents:UIControlEventTouchDown];
    self.boyButton = boyButton;

    UIButton *girlButton = [[UIButton alloc] initWithFrame:CGRectMake(-170, 200, 714, 165)];
    [girlButton setImage:[UIImage imageNamed:@"entrance_2"] forState:UIControlStateNormal];
    [girlButton setImage:[UIImage imageNamed:@"entrance_highlight_2"] forState:UIControlStateHighlighted];
    [self.view addSubview:girlButton];

    UIButton *kidButtoon = [[UIButton alloc] initWithFrame:CGRectMake(-170, 300, 714, 165)];
    [kidButtoon setImage:[UIImage imageNamed:@"entrance_3"] forState:UIControlStateNormal];
    [kidButtoon setImage:[UIImage imageNamed:@"entrance_highlight_3"] forState:UIControlStateHighlighted];
    [self.view addSubview:kidButtoon];

    UIButton *lifeStyleButton = [[UIButton alloc] initWithFrame:CGRectMake(-170, 400, 714, 165)];
    [lifeStyleButton setImage:[UIImage imageNamed:@"entrance_4"] forState:UIControlStateNormal];
    [lifeStyleButton setImage:[UIImage imageNamed:@"entrance_highlight_4"] forState:UIControlStateHighlighted];
    [self.view addSubview:lifeStyleButton];

}

/**
 *  modal进入首页
 */
- (void)modalToMainView
{
    [self.timer invalidate];
    MainViewController *mainViewController = [[MainViewController alloc] init];
    CATransition *transition = [CATransition animation];
    transition.type = @"push";
    transition.subtype = @"fromTop";
    transition.duration = 1.f;
    [[UIApplication sharedApplication].keyWindow.layer addAnimation:transition forKey:nil];
    [UIApplication sharedApplication].keyWindow.rootViewController = mainViewController;
}

- (UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}
@end
