//
//  WXNavigationController.m
//  YOHO
//
//  Created by Woz Wong on 15/11/18.
//  Copyright © 2015年 code4Fun. All rights reserved.
//

#import "WXNavigationController.h"

@interface WXNavigationController ()

@end

@implementation WXNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
//    self.navigationBar.backgroundColor = [UIColor grayColor];

}

- (BOOL)prefersStatusBarHidden
{
    return YES;
}

- (UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}

@end
