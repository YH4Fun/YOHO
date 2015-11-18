//
//  ShopCarViewController.m
//  YOHO
//
//  Created by Woz Wong on 15/11/18.
//  Copyright © 2015年 code4Fun. All rights reserved.
//

#import "ShopCarViewController.h"

@interface ShopCarViewController ()

@end

@implementation ShopCarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tabBarItem.image = [UIImage imageNamed:@"shoppingcart"];
    self.tabBarItem.title = @"购物车";
    self.navigationItem.title = @"购物车";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
