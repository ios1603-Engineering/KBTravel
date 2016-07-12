//
//  KBWEModel.m
//  KBTravel
//
//  Created by tarena04 on 16/7/12.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import "KBWEModel.h"
#import "KBCountrys.h"
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
        
        NSMutableArray *tempArray  = [NSMutableArray array];
        for (NSDictionary *conureys in dic[@"countrys"]) {
            
            KBCountrys *conutry = [[KBCountrys alloc] initWithDic:conureys];
            [tempArray addObject:conutry];
            
        }
        
        self.countrys = tempArray;

        
    }
    return self;
}



@end
