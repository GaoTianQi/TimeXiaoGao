//
//  AllHeroModel.h
//  BaseProject
//
//  Created by ios－54 on 15/11/2.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "HeroModel.h"

@class AllModel;
@interface AllHeroModel : HeroModel


@property (nonatomic, strong) NSArray<AllModel *> *all;


@end

@interface AllModel : HeroDetail

@end

