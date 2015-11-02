//
//  RuneModel.m
//  BaseProject
//
//  Created by ios－54 on 15/11/2.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "RuneModel.h"

@implementation RuneModel


+ (NSDictionary *)objectClassInArray{
    return @{@"Purple" : [RunePurpleModel class], @"Yellow" : [RuneYellowModel class], @"Blue" : [RuneBlueModel class], @"Red" : [RunRedModel class]};
}
@end
@implementation RunePurpleModel

@end


@implementation RuneYellowModel

@end


@implementation RuneBlueModel

@end


@implementation RunRedModel

@end


