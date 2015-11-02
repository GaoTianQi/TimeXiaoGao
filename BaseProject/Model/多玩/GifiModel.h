//
//  GifiModel.h
//  BaseProject
//
//  Created by ios－54 on 15/11/2.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "BaseModel.h"

@interface GifiModel : BaseModel

@property (nonatomic, strong) NSArray *a;
@property (nonatomic, strong) NSArray *d;
@property (nonatomic, strong) NSArray *g;

@end

@interface GiftSkillModel : BaseModel

@property (nonatomic, strong) NSString *identifier;
@property (nonatomic, strong) NSArray *level;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *need;

@end
