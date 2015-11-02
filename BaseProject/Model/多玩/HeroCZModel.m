//
//  HeroCZModel.m
//  BaseProject
//
//  Created by ios－54 on 15/11/2.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "HeroCZModel.h"

@implementation HeroCZModel

+ (NSString *)replacedKeyFromPropertyName121:(NSString *)propertyName
{
//  驼峰转下划线
    return [propertyName underlineFromCamel];
}

@end
