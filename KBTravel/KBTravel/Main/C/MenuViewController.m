//
//  MenuViewController.m
//  左侧边栏项目
//
//  Created by tarena on 16/6/24.
//  Copyright © 2016年 Tarena. All rights reserved.
//

#import "MenuViewController.h"
#import "XHDrawerController.h"
@interface MenuViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableViewq;

@property (nonatomic,strong) NSArray *titles;


@end



@implementation MenuViewController


- (NSArray *)titles
{
    if (!_titles) {
        _titles = @[@"首页",@"世界探索",@"主题城市",@"行程规划",@"工具箱",@"设置"];
    }
    
    return _titles;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableViewq.separatorStyle = UITableViewCellSelectionStyleNone;
    self.tableViewq.scrollEnabled = NO;

}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return self.titles.count;
}


// 登陆
- (IBAction)clickLogin:(id)sender {
    
    
    
    
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    cell.backgroundColor =  [UIColor clearColor];
    cell.textLabel.font = [UIFont systemFontOfSize:18];
    cell.textLabel.textColor = [UIColor whiteColor];
    cell.textLabel.textAlignment = NSTextAlignmentCenter;
    cell.textLabel.text = self.titles[indexPath.row];
    [cell setSelectionStyle:(UITableViewCellSelectionStyleNone)];

    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
   UITabBarController *tbc = (UITabBarController *)self.drawerController.centerViewController;
    
    tbc.selectedIndex = indexPath.row;
    
    [self.drawerController closeDrawerAnimated:YES completion:nil];
}


- (CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 55;
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
