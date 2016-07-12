//
//  KBCellScrItem.h
//  KBTravel
//
//  Created by tarena04 on 16/7/12.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "KBCountrys.h"
@interface KBCellScrItem : UIView

@property (nonatomic,strong) KBCountrys *country;


+ (instancetype) returnXIBItem;
@end
