//
//  RuneModel.h
//  BaseProject
//
//  Created by ios－54 on 15/11/2.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "BaseModel.h"

@class RunePurpleModel,RuneYellowModel,RuneBlueModel,RunRedModel;
@interface RuneModel : BaseModel


@property (nonatomic, strong) NSArray<RunePurpleModel *> *Purple;

@property (nonatomic, strong) NSArray<RuneBlueModel *> *Blue;

@property (nonatomic, strong) NSArray<RuneYellowModel *> *Yellow;

@property (nonatomic, strong) NSArray<RunRedModel *> *Red;


@end
@interface RunePurpleModel : NSObject

@property (nonatomic, copy) NSString *Img;

@property (nonatomic, copy) NSString *Name;

@property (nonatomic, copy) NSString *lev3;

@property (nonatomic, assign) NSInteger Recom;

@property (nonatomic, copy) NSString *lev2;

@property (nonatomic, assign) NSInteger iplev3;

@property (nonatomic, copy) NSString *Units;

@property (nonatomic, assign) NSInteger Type;

@property (nonatomic, copy) NSString *Standby;

@property (nonatomic, copy) NSString *lev1;

@property (nonatomic, assign) NSInteger iplev2;

@property (nonatomic, copy) NSString *Alias;

@property (nonatomic, copy) NSString *Prop;

@property (nonatomic, assign) NSInteger iplev1;

@end

@interface RuneYellowModel : NSObject

@property (nonatomic, copy) NSString *Img;

@property (nonatomic, copy) NSString *Name;

@property (nonatomic, copy) NSString *lev3;

@property (nonatomic, copy) NSString *Recom;

@property (nonatomic, copy) NSString *lev2;

@property (nonatomic, assign) NSInteger iplev3;

@property (nonatomic, copy) NSString *Units;

@property (nonatomic, assign) NSInteger Type;

@property (nonatomic, copy) NSString *Standby;

@property (nonatomic, copy) NSString *lev1;

@property (nonatomic, copy) NSString *iplev2;

@property (nonatomic, copy) NSString *Alias;

@property (nonatomic, copy) NSString *Prop;

@property (nonatomic, copy) NSString *iplev1;

@end

@interface RuneBlueModel : NSObject

@property (nonatomic, copy) NSString *Img;

@property (nonatomic, copy) NSString *Name;

@property (nonatomic, copy) NSString *lev3;

@property (nonatomic, copy) NSString *Recom;

@property (nonatomic, copy) NSString *lev2;

@property (nonatomic, assign) NSInteger iplev3;

@property (nonatomic, copy) NSString *Units;

@property (nonatomic, assign) NSInteger Type;

@property (nonatomic, copy) NSString *Standby;

@property (nonatomic, copy) NSString *lev1;

@property (nonatomic, copy) NSString *iplev2;

@property (nonatomic, copy) NSString *Alias;

@property (nonatomic, copy) NSString *Prop;

@property (nonatomic, copy) NSString *iplev1;

@end

@interface RunRedModel : NSObject

@property (nonatomic, copy) NSString *Img;

@property (nonatomic, copy) NSString *Name;

@property (nonatomic, copy) NSString *lev3;

@property (nonatomic, assign) NSInteger Recom;

@property (nonatomic, copy) NSString *lev2;

@property (nonatomic, assign) NSInteger iplev3;

@property (nonatomic, copy) NSString *Units;

@property (nonatomic, assign) NSInteger Type;

@property (nonatomic, copy) NSString *Standby;

@property (nonatomic, copy) NSString *lev1;

@property (nonatomic, copy) NSString *iplev2;

@property (nonatomic, copy) NSString *Alias;

@property (nonatomic, copy) NSString *Prop;

@property (nonatomic, copy) NSString *iplev1;

@end

