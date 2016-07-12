//
//  MainNaviController.m
//  左侧边栏项目
//
//  Created by tarena on 16/6/24.
//  Copyright © 2016年 Tarena. All rights reserved.
//

#import "MainNaviController.h"
#import "XHDrawerController.h"
@interface MainNaviController ()

@end

@implementation MainNaviController

- (void)viewDidLoad {
    [super viewDidLoad];
    
   

}

-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    

    self.topViewController.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithImage:[KBTools setImageOriginalWithImageName:@"navigation"] style:(UIBarButtonItemStyleDone) target:self action:@selector(menuAction)];
    
    [self.navigationBar setBackgroundImage:[UIImage new] forBarMetrics:UIBarMetricsDefault];
    //去掉 bar 下面有一条黑色的线
    [self.navigationBar setShadowImage:[UIImage new]];
    
}


-(void)menuAction{
 
    [self.drawerController toggleDrawerSide:XHDrawerSideLeft animated:YES completion:NULL];
    
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
