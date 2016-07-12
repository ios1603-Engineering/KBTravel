//
//  MainTabbarController.m
//  左侧边栏项目
//
//  Created by tarena on 16/6/24.
//  Copyright © 2016年 Tarena. All rights reserved.
//

#import "MainTabbarController.h"


#import "KBHemoViewController.h"
#import "KBToolboxViewController.h"
#import "KBThemeViewController.h"
#import "KBStrokePlanningViewController.h"
#import "KBWorldExplorationViewController.h"
#import "KBSetViewController.h"

#import "MainNaviController.h"
@interface MainTabbarController ()

@end

@implementation MainTabbarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self addChildViewController:[[MainNaviController alloc]initWithRootViewController:[KBHemoViewController new]]];
    
    [self addChildViewController:[[MainNaviController alloc]initWithRootViewController:[KBWorldExplorationViewController new]]];
    
    [self addChildViewController:[[MainNaviController alloc]initWithRootViewController:[KBThemeViewController new]]];
    
    [self addChildViewController:[[MainNaviController alloc]initWithRootViewController:[KBStrokePlanningViewController new]]];
    
    [self addChildViewController:[[MainNaviController alloc]initWithRootViewController:[KBToolboxViewController new]]];
    
    [self addChildViewController:[[MainNaviController alloc]initWithRootViewController:[KBSetViewController new]]];
    
    self.tabBar.hidden = YES;
    
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
