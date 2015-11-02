//
//  FreeHeroModel.h
//  BaseProject
//
//  Created by ios－54 on 15/11/2.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "BaseModel.h"

@class FreeHeroModel;
@interface FreeHeroModel : BaseModel

@property (nonatomic, strong) NSArray<FreeHeroModel *> *free;

@property (nonatomic, copy) NSString *desc;

@end
@interface FreeHeroFreeModel : NSObject

@property (nonatomic, copy) NSString *enName;

@property (nonatomic, copy) NSString *cnName;

@property (nonatomic, copy) NSString *rating;

@property (nonatomic, copy) NSString *location;

@property (nonatomic, copy) NSString *price;

@property (nonatomic, copy) NSString *title;

@property (nonatomic, copy) NSString *tags;

@end

