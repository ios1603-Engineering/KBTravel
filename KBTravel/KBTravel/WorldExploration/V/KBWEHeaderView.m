//
//  KBWEHeaderView.m
//  KBTravel
//
//  Created by tarena04 on 16/7/12.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import "KBWEHeaderView.h"



@implementation KBWEHeaderView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/


+ (instancetype) retutnXIBView
{
    return [[NSBundle mainBundle] loadNibNamed:@"KBWEHeaderView" owner:nil options:nil].lastObject;
}
@end
