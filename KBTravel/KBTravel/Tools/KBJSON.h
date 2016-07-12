//
//  KBJSON.h
//  KBTravel
//
//  Created by tarena04 on 16/7/12.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface KBJSON : NSObject

/**
 中文转换接口
 **/
+ (NSString *) setZHString:(NSString *) string;

/**
 GET请求
 **/
+ (void) requestJsonDataWithGET:(NSString *) JsonURLStr RequestParameter:(NSDictionary *) Parameter
                  returnDataWih:(void(^)(id data)) dicData;
/**
 JSON请求
 **/
+ (void) requestJsonDataWithPOST:(NSString *) JsonURLStr RequestParameter:(NSDictionary *) Parameter
                   returnDataWih:(void(^)(id data)) dicData;
@end
