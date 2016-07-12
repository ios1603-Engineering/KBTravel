//
//  KBWEModel.m
//  KBTravel
//
//  Created by tarena04 on 16/7/12.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import "KBWEModel.h"

@implementation KBWEModel


- (instancetype) initWithDic:(NSDictionary *) dic
{
    if (self = [super init]) {
        
        self.ID = dic[@"id"];
        self.type = dic[@"type"];
        self.continentId = dic[@"continentId"];
        self.countryId = dic[@"countryId"];
        self.name = dic[@"name"];
        self.name_cn = dic[@"name_cn"];
        self.cover = dic[@"cover"];
        self.path = dic[@"path"];
        self.countrys = dic[@"countrys"];
        
    }
    return self;
}

-(void)setValue:(id)value forKey:(NSString *)key
{
    if ([key isEqualToString:@"id"]) {
        _ID  = value;
    }
}


@end
