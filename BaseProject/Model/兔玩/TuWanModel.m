//
//  TuWanBaseModel.m
//  BaseProject
//
//  Created by ios－54 on 15/11/2.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "TuWanModel.h"

@implementation TuWanModel

@end

@implementation TuWanDataModel

+ (NSDictionary *)objectClassInArray{
    return @{@"indexpic" : [TuWanDataIndexpicModel class]};
}

@end


@implementation TuWanDataIndexpicModel

+ (NSDictionary *)objectClassInArray{
    return @{@"showitem" : [TuWanDataShowitemModel class]};
}

+ (NSDictionary *)replacedKeyFromPropertyName
{
    return @{@"desc":@"description", @"atypename":@"typename"};
}

@end


@implementation TuWanDataInfochildModel

@end


@implementation TuWanDataShowitemModel

@end


@implementation Info

@end







