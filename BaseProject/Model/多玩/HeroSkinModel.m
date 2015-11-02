//
//  HeroSkinModel.m
//  BaseProject
//
//  Created by ios－54 on 15/11/2.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "HeroSkinModel.h"

@implementation HeroSkinModel


+ (NSDictionary *)objectClassInArray{
    return @{@"HeroSkinesArrayModel" : [Heroskinesarraymodel class]};
}
@end
@implementation Heroskinesarraymodel

+ (NSDictionary *)replacedKeyFromPropertyName
{
    return @{@"identify":@"id"};
}

@end


