//
//  KBJSON.m
//  KBTravel
//
//  Created by tarena04 on 16/7/12.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import "KBJSON.h"

@implementation KBJSON

+ (AFHTTPSessionManager *) returnManager
{
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    
    manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    return manager;
}


+ (NSString *) setZHString:(NSString *) string

{
    NSString * encodingString = [string stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLQueryAllowedCharacterSet]];
    
    return  encodingString;
}


+ (void) requestJsonDataWithGET:(NSString *) JsonURLStr RequestParameter:(NSDictionary *) Parameter
                  returnDataWih:(void(^)(id data)) dicData
{
    [[self returnManager] GET:JsonURLStr parameters:Parameter progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
        NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:responseObject options:0 error:nil];
        dicData(dic);
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
    }];
    
}


+ (void) requestJsonDataWithPOST:(NSString *) JsonURLStr RequestParameter:(NSDictionary *) Parameter
                   returnDataWih:(void(^)(id data)) dicData
{
    [[self returnManager] POST:JsonURLStr parameters:Parameter progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
        NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:responseObject options:0 error:nil];
        dicData(dic);
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
    }];
    
}

@end
