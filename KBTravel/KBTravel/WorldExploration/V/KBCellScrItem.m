//
//  KBCellScrItem.m
//  KBTravel
//
//  Created by tarena04 on 16/7/12.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import "KBCellScrItem.h"

@interface KBCellScrItem ()

@property (weak, nonatomic) IBOutlet UIImageView *icon;

@property (weak, nonatomic) IBOutlet UILabel *name;

@end

@implementation KBCellScrItem


-(void)setCountry:(KBCountrys *)country
{
    _country = country;
    
    self.name.text = country.name_cn;
    [self.icon setImageWithURL:[NSURL URLWithString:country.cover]];

}

+ (instancetype) returnXIBItem
{
    return [[NSBundle mainBundle] loadNibNamed:@"KBCellScrItem" owner:nil options:nil].lastObject;
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"点击了城市");
}


@end
