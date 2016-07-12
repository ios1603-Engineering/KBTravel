//
//  KBCountrys.h
//  KBTravel
//
//  Created by tarena04 on 16/7/12.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import "JSONModel.h"

@interface KBCountrys : JSONModel

@property (nonatomic,strong) NSString *ID;

@property (nonatomic,strong) NSString *type;

@property (nonatomic,strong) NSString *continentId;

@property (nonatomic,strong) NSString *countryId;

@property (nonatomic,strong) NSString *name;

@property (nonatomic,strong) NSString *name_cn;

@property (nonatomic,strong) NSString *cover;

@property (nonatomic,strong) NSNumber *capitalId;


@end
