//
//  GifiModel.m
//  BaseProject
//
//  Created by ios－54 on 15/11/2.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "GifiModel.h"

@implementation GifiModel

+ (NSDictionary *)objectClassInArray{
    return @{@"a" : [GiftSkillModel class], @"d" : [GiftSkillModel class], @"g" : [GiftSkillModel class]};
}

@end

@implementation GiftSkillModel

+ (NSDictionary *)replacedKeyFromPropertyName
{
    return @{@"identify":@"id"};
}

@end
