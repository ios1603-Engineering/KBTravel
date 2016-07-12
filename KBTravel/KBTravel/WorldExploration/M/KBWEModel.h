//
//  KBWEModel.h
//  KBTravel
//
//  Created by tarena04 on 16/7/12.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface KBWEModel : NSObject

@property (nonatomic,copy) NSString *ID;

@property (nonatomic,copy) NSString *type;

@property (nonatomic,copy) NSString *continentId;

@property (nonatomic,copy) NSString *countryId;

@property (nonatomic,copy) NSString *name;

@property (nonatomic,copy) NSString *name_cn;

@property (nonatomic,copy) NSString *cover;

@property (nonatomic,copy) NSString *path;

@property (nonatomic,copy) NSArray *countrys;

- (instancetype) initWithDic:(NSDictionary *) dic;



@end
