//
//  MainViewController.m
//  YOHO
//
//  Created by Woz Wong on 15/11/18.
//  Copyright © 2015年 code4Fun. All rights reserved.
//

#import "MainViewController.h"
#import "HomePageViewController.h"
#import "ClassifyViewController.h"
#import "StrollViewController.h"
#import "ShopCarViewController.h"
#import "MineViewController.h"
#import "WXNavigationController.h"
@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self addChild];

}

/**
 *  添加子控制器
 */
- (void)addChild
{
    HomePageViewController *home = [[HomePageViewController alloc] init];
    home.view.backgroundColor = [UIColor redColor];
    [self addChildWithViewController:home];

    ClassifyViewController *classify = [[ClassifyViewController alloc] init];
    classify.view.backgroundColor = [UIColor blueColor];
    [self addChildWithViewController:classify];

    StrollViewController *stroll = [[StrollViewController alloc] init];
    stroll.view.backgroundColor = [UIColor greenColor];
    [self addChildWithViewController:stroll];

    ShopCarViewController *shopCar = [[ShopCarViewController alloc] init];
    shopCar.view.backgroundColor = [UIColor lightGrayColor];
    [self addChildWithViewController:shopCar];

    MineViewController *mine = [[MineViewController alloc] init];
    mine.view.backgroundColor = [UIColor whiteColor];
    [self addChildWithViewController:mine];

}


-(void)addChildWithViewController:(UIViewController *)viewController
{
    WXNavigationController *navigation = [[WXNavigationController alloc] initWithRootViewController:viewController];
//    navigation.tabBarItem.enabled = NO;
    [self addChildViewController:navigation];
}

@end
