//
//  KBWorldExplorationViewController.m
//  KBTravel
//
//  Created by tarena04 on 16/7/12.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import "KBWorldExplorationViewController.h"
#import "KBWEHeaderView.h"
#import "KBWEModel.h"
#import "KBWETableViewCell.h"

#define KROWheight 60

@interface KBWorldExplorationViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic,strong) UITableView *tableView;

@property (nonatomic,strong) NSArray *continents;


@end

@implementation KBWorldExplorationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self addSubViews];
    [self getData];
    
}

- (void) addSubViews
{
    UIImageView *bgImageView = [[UIImageView alloc] initWithFrame:self.view.bounds];
    bgImageView.image = [UIImage imageNamed:@"profile_bg"];
    [self.view addSubview:bgImageView];
    
    self.tableView  =[[UITableView alloc] initWithFrame:self.view.bounds];
    self.tableView.separatorStyle = UITableViewCellSelectionStyleNone;
    self.tableView.y += 64;
    self.tableView.height -= 64;
    [self.tableView registerClass:[KBWETableViewCell class] forCellReuseIdentifier:@"cell"];
    self.tableView.backgroundColor = [UIColor clearColor];
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    [self.view addSubview:self.tableView];
}

- (void) getData
{
    [KBJSON requestJsonDataWithGET:@"http://www.koubeilvxing.com/countrys?lang=zh" RequestParameter:nil returnDataWih:^(id data) {
        NSMutableArray *tempArray  = [NSMutableArray array];
        for (NSDictionary *dic in data[@"continents"]) {
            KBWEModel *model =  [[KBWEModel alloc] initWithDic:dic];
            [tempArray addObject:model];
        }
        
        self.continents = [tempArray copy];
        [self.tableView reloadData];
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return  self.continents.count;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}


- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    KBWETableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    KBWEModel *model = self.continents[indexPath.section];
    cell.countrys = model.countrys;
    cell.backgroundColor = [UIColor clearColor];
    
    return cell;
    
}


- (UIView *) tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    
    KBWEHeaderView *headerView = [KBWEHeaderView retutnXIBView];
    KBWEModel *model = self.continents[section];
    headerView.headerTitle.text = model.name_cn;

    return headerView;
}

- (CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 100;
}

- (CGFloat) tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return KROWheight;
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
