//
//  KBWETableViewCell.h
//  KBTravel
//
//  Created by tarena04 on 16/7/12.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface KBWETableViewCell : UITableViewCell

@property (nonatomic,strong) NSArray *countrys;

+ (instancetype) returnXIBCell;

@end
