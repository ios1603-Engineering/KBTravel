//
//  KBCountrys.m
//  KBTravel
//
//  Created by tarena04 on 16/7/12.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import "KBCountrys.h"

@implementation KBCountrys

-(void)setValue:(id)value forKey:(NSString *)key
{
    if ([key isEqualToString:@"id"]) {
        _ID  = value;
    }
}


@end
