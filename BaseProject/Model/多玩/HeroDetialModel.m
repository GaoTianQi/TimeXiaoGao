//
//  HeroDetialModel.m
//  BaseProject
//
//  Created by ios－54 on 15/11/2.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "HeroDetialModel.h"

@implementation HeroDetialModel

+ (NSDictionary *)objectClassInArray{
    return @{@"like" : [HeroDetailLikeModel class], @"hate" : [HeroDetailHateModel class]};
}
+ (NSDictionary *)replacedKeyFromPropertyName
{
    return @{@"identify":@"id", @"desc":@"description"};
}

@end

@implementation HeroDetailSkillModel

+ (NSDictionary *)replacedKeyFromPropertyName
{
    return @{@"identify":@"id", @"desc":@"description"};
}

@end

@implementation HeroDetailLikeModel

@end


@implementation HeroDetailHateModel

@end


