//
//  KBWETableViewCell.m
//  KBTravel
//
//  Created by tarena04 on 16/7/12.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import "KBWETableViewCell.h"
#import "KBCountrys.h"
#import "KBCellScrItem.h"

@interface KBWETableViewCell ()


@property (weak, nonatomic) IBOutlet UIScrollView *src;



@end

@implementation KBWETableViewCell


-(void)setCountrys:(NSArray *)countrys
{
//    UIScrollView *scr = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, self.width, 100)];
    self.src.backgroundColor = [UIColor clearColor];
//    [self addSubview:src];
    _countrys = countrys;
    int i = 0;
    for (KBCountrys *country in countrys) {
        
        KBCellScrItem *item = [KBCellScrItem returnXIBItem];
        
        item.frame = CGRectMake(5 + i * (item.width + 5), 0, item.width, item.height);
        
        item.country = country;
        
        [self.src addSubview:item];
        i++;
    }
    
    self.src.contentSize = CGSizeMake(countrys.count * 100, 0);
    
}

- (void)awakeFromNib {
    [super awakeFromNib];
   
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

   
}


+ (instancetype) returnXIBCell
{
    return [[NSBundle mainBundle] loadNibNamed:@"KBWETableViewCell" owner:nil options:nil].lastObject;
}

@end
