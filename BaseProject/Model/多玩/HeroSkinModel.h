//
//  HeroSkinModel.h
//  BaseProject
//
//  Created by ios－54 on 15/11/2.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "BaseModel.h"

@class Heroskinesarraymodel;
@interface HeroSkinModel : BaseModel


@property (nonatomic, strong) NSArray<Heroskinesarraymodel *> *HeroSkinesArrayModel;


@end
@interface Heroskinesarraymodel : NSObject

@property (nonatomic, copy) NSString *identify;

@property (nonatomic, copy) NSString *bigImg;

@property (nonatomic, copy) NSString *name;

@property (nonatomic, copy) NSString *price;

@property (nonatomic, copy) NSString *smallImg;

@end

