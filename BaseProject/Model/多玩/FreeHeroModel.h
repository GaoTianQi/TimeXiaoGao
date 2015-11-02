//
//  FreeHeroModel.h
//  BaseProject
//
//  Created by ios－54 on 15/11/2.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "HeroModel.h"

@class FreeHeroModel;
@interface FreeHeroModel : HeroModel


@property (nonatomic, strong) NSArray<FreeHeroModel *> *free;

@property (nonatomic, copy) NSString *desc;


@end
@interface FreeModel : HeroDetail

@end

