//
//  DuoWanNetManager.h
//  BaseProject
//
//  Created by ios－54 on 15/11/3.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "BaseNetManager.h"
#import "FreeHeroModel.h"
#import "AllHeroModel.h"
#import "HeroSkinModel.h"
#import "HeroVideoModel.h"
#import "HeroCZModel.h"
#import "HeroDetialModel.h"
#import "HeroGiftModel.h"
#import "HeroChangeModel.h"
#import "HeroWeekDataModel.h"
#import "ToolMenuModel.h"
#import "ZBCategoryModel.h"
#import "ZBItemModel.h"
#import "ItemDetailModel.h"
#import "GifiModel.h"
#import "RuneModel.h"
#import "SumAbilityModel.h"
#import "BestGroupModel.h"

@interface DuoWanNetManager : BaseNetManager

// 免费英雄
+ (id)getFreeHeroModelCompletionHandle:(void(^)(FreeHeroModel *model, NSError *error))completionHandle;
// 全部英雄
+ (id)getAllHeroModelCompletionHandle:(void(^)(AllHeroModel *model, NSError *error))completionHandle;
// 英雄皮肤
+ (id)getHeroSkinOfHeroName:(NSString *)name CompletionHandle:(void(^)(NSArray <HeroSkinModel*> *models, NSError *error))completionHandle;
// 英雄视频
+ (id)getHeroVideoOfHeroName:(NSString *)name Page:(NSInteger)page CompletionHandle:(void(^)(NSArray<HeroVideoModel *> *models, NSError *error))completionHandle;
// 英雄出装
+ (id)getHeroCZOfHeroName:(NSString *)name CompletionHandle:(void(^)(NSArray<HeroCZModel *> *models, NSError *error))completionHandle;
// 英雄资料
+ (id)getHeroDetailOfName:(NSString *)name CompletionHandle:(void(^)(HeroDetialModel *model, NSError *error))completionHandle;
// 天赋符文
+ (id)getHeroGiftOfName:(NSString *)name CompletionHandle:(void(^)(NSArray<HeroGiftModel *> *models, NSError *error))completionHandle;
// 英雄改动
+ (id)getHeroChangeOfName:(NSString *)name CompletionHandle:(void(^)(HeroChangeModel *model, NSError *error))completionHandle;
// 一周数据
+ (id)getHeroWeekDataOfHeroId:(NSInteger)heroId CompletionHandle:(void(^)(HeroWeekDataModel *model, NSError *error))completionHandle;

#pragma mark - 游戏百科-----------------------
// 游戏百科列表
+ (id)getToolMenuModelCompletionHandle:(void(^)(NSArray<ToolMenuModel *> *models, NSError *error))completionHandle;
// 装备分类
+ (id)getZBCategoryModelCompletionHandle:(void(^)(NSArray<ZBCategoryModel *> *models, NSError *error))completionHandle;
// 某装备分类
+ (id)getZbItemModelOfTag:(NSString *)tag CompletionHandle:(void(^)(NSArray<ZBItemModel *> *models, NSError *error))completionHandle;
// 装备详情
+ (id)getItemDetailOfId:(NSString *)identify CompletionHandle:(void(^)(ItemDetailModel *model, NSError *error))completionHandle;
// 天赋
+ (id)getGiftModelCompletionHandle:(void(^)(GifiModel *model, NSError *error))completionHandle;
// 符文列表
+ (id)getRuneModelCompletionHandle:(void(^)(RuneModel *model, NSError *error))completionHandle;
// 召唤师技能类表
+ (id)getSumAbilityModelCompletionHandle:(void(^)(NSArray<SumAbilityModel *> *models, NSError *error))completionHandle;
// 最佳阵容
+ (id)getBestGroupModelCompletionHandle:(void(^)(NSArray<BestGroupModel *> *models, NSError *error))completionHandle;

@end
