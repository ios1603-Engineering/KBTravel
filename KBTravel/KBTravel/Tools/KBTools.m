//
//  KBTools.m
//  KBTravel
//
//  Created by tarena04 on 16/7/12.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import "KBTools.h"

@implementation KBTools

+ (UIImage *) setImageOriginalWithImageName:(NSString *) imageName
{
    return  [[UIImage imageNamed:imageName] imageWithRenderingMode:(UIImageRenderingModeAlwaysOriginal)];
}

@end
