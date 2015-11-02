//
//  HeroModel.m
//  BaseProject
//
//  Created by ios－54 on 15/11/2.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "HeroModel.h"

@implementation HeroModel

- (NSURL *)getHeroHeadImage:(NSString *)name
{
    NSString *path = [NSString stringWithFormat:@"http://img.lolbox.duowan.com/champions/%@_120x120.jpg", name];
    return [NSURL URLWithString:path];
}

@end

@implementation HeroDetail

@end
