//
//  DuoWanNetManager.h
//  BaseProject
//
//  Created by ios－54 on 15/11/3.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "BaseNetManager.h"
#import "DuoWanModel.h"

@interface DuoWanNetManager : BaseNetManager

// 使用 /** 内容 */ 方式添加注释，可以让你的代码被调用时出现代码提示

/**
 *  获取免费英雄列表
 *
 *  @param model 是一个block中的返回值，一个FreeHeroModel类型的值
 *  @param error 如果出现错误作为返回值返回一个错误信息
 *
 *  @return 当前请求的任务
 */
+ (id)getFreeHeroModelCompletionHandle:(void(^)(FreeHeroModel *model, NSError *error))completionHandle;

/**
 *  获取全部英雄列表
 *
 *  @param model 是一个block中的返回值，一个AllHeroModel类型的值
 *  @param error 如果出现错误作为返回值返回一个错误信息
 *
 *  @return 当前请求的任务
 */
+ (id)getAllHeroModelCompletionHandle:(void(^)(AllHeroModel *model, NSError *error))completionHandle;

/**
 *  获取英雄皮肤列表
 *
 *  @param heroName 要获取皮肤的英雄的英文名字
 *
 *  @param models 是一个block中的返回值，一个由HeroSkinModel类型的元素组成的数组
 *  @param error 如果出现错误作为返回值返回一个错误信息
 *
 *  @return 当前请求的任务
 */
+ (id)getHeroSkinOfHeroName:(NSString *)enName CompletionHandle:(void(^)(NSArray <HeroSkinModel*> *models, NSError *error))completionHandle;

/**
 *  获取英雄相关的视频列表
 *
 *  @param heroName 要获取皮肤的英雄的英文名字
 *
 *  @param models 是一个block中的返回值，一个由HeroVideoModel类型的元素组成的数组
 *  @param error 如果出现错误作为返回值返回一个错误信息
 *
 *  @return 当前请求的任务
 */
+ (id)getHeroVideoOfHeroName:(NSString *)enName Page:(NSInteger)page CompletionHandle:(void(^)(NSArray<HeroVideoModel *> *models, NSError *error))completionHandle;

/**
 *  获取英雄出装列表
 *
 *  @param heroName 要获取皮肤的英雄的英文名字
 *
 *  @param models 是一个block中的返回值，一个由HeroCZModel类型的元素组成的数组
 *  @param error 如果出现错误作为返回值返回一个错误信息
 *
 *  @return 当前请求的任务
 */
+ (id)getHeroCZOfHeroName:(NSString *)enName CompletionHandle:(void(^)(NSArray<HeroCZModel *> *models, NSError *error))completionHandle;

/**
 *  获取英雄资料列表
 *
 *  @param enName 英雄的英文名
 *
 *  @param model 是一个block中的返回值，一个HeroDetialModel类型的值
 *  @param error 如果出现错误作为返回值返回一个错误信息
 *
 *  @return 当前请求的任务
 */
+ (id)getHeroDetailOfName:(NSString *)enName CompletionHandle:(void(^)(HeroDetialModel *model, NSError *error))completionHandle;

/**
 *  获取英雄天赋列表
 *
 *  @param enName 英雄的英文名
 *
 *  @param models 是一个block中的返回值，一个由HeroGiftModel类型的元素组成的数组
 *  @param error 如果出现错误作为返回值返回一个错误信息
 *
 *  @return 当前请求的任务
 */
+ (id)getHeroGiftOfName:(NSString *)enName CompletionHandle:(void(^)(NSArray<HeroGiftModel *> *models, NSError *error))completionHandle;

/**
 *  获取英雄改动列表
 *
 *  @param enName 英雄的英文名
 *
 *  @param model 是一个block中的返回值，一个HeroChangeModel类型的值
 *  @param error 如果出现错误作为返回值返回一个错误信息
 *
 *  @return 当前请求的任务
 */
+ (id)getHeroChangeOfName:(NSString *)enName CompletionHandle:(void(^)(HeroChangeModel *model, NSError *error))completionHandle;

/**
 *  获取一周数据列表
 *
 *  @param heroId 英雄的id
 *
 *  @param model 是一个block中的返回值，一个HeroWeekDataModel类型的值
 *  @param error 如果出现错误作为返回值返回一个错误信息
 *
 *  @return 当前请求的任务
 */
+ (id)getHeroWeekDataOfHeroId:(NSInteger)heroId CompletionHandle:(void(^)(HeroWeekDataModel *model, NSError *error))completionHandle;


#pragma mark - 游戏百科-----------------------
/**
 *  获取游戏百科列表
 *
 *  @param models 是一个block中的返回值，一个由ToolMenuModel类型的元素组成的数组
 *  @param error 如果出现错误作为返回值返回一个错误信息
 *
 *  @return 当前请求的任务
 */
+ (id)getToolMenuModelCompletionHandle:(void(^)(NSArray<ToolMenuModel *> *models, NSError *error))completionHandle;

/**
 *  获取装别分类列表
 *
 *  @param models 是一个block中的返回值，一个由ZBCategoryModel类型的元素组成的数组
 *  @param error 如果出现错误作为返回值返回一个错误信息
 *
 *  @return 当前请求的任务
 */
+ (id)getZBCategoryModelCompletionHandle:(void(^)(NSArray<ZBCategoryModel *> *models, NSError *error))completionHandle;

/**
 *  获取某装备分类列表
 *
 *  @param tag 装备的标签
 *
 *  @param models 是一个block中的返回值，一个由ZBItemModel类型的元素组成的数组
 *  @param error 如果出现错误作为返回值返回一个错误信息
 *
 *  @return 当前请求的任务
 */
+ (id)getZbItemModelOfTag:(NSString *)tag CompletionHandle:(void(^)(NSArray<ZBItemModel *> *models, NSError *error))completionHandle;

/**
 *  获取装备详情列表
 *
 *  @param id 装备的id
 *
 *  @param models 是一个block中的返回值，一个ItemDetailModel类型的元素
 *  @param error 如果出现错误作为返回值返回一个错误信息
 *
 *  @return 当前请求的任务
 */
+ (id)getItemDetailOfId:(NSString *)identify CompletionHandle:(void(^)(ItemDetailModel *model, NSError *error))completionHandle;

/**
 *  获取天赋列表
 *
 *  @param models 是一个block中的返回值，一个GifiModel类型的元素
 *  @param error 如果出现错误作为返回值返回一个错误信息
 *
 *  @return 当前请求的任务
 */
+ (id)getGiftModelCompletionHandle:(void(^)(GifiModel *model, NSError *error))completionHandle;

/**
 *  获取符文列表
 *
 *  @param models 是一个block中的返回值，一个RuneModel类型的元素
 *  @param error 如果出现错误作为返回值返回一个错误信息
 *
 *  @return 当前请求的任务
 */
+ (id)getRuneModelCompletionHandle:(void(^)(RuneModel *model, NSError *error))completionHandle;

/**
 *  获取召唤师技能列表
 *
 *  @param models 是一个block中的返回值，一个由SumAbilityModel类型的元素组成的数组
 *  @param error 如果出现错误作为返回值返回一个错误信息
 *
 *  @return 当前请求的任务
 */
+ (id)getSumAbilityModelCompletionHandle:(void(^)(NSArray<SumAbilityModel *> *models, NSError *error))completionHandle;

/**
 *  获取最佳阵容列表
 *
 *  @param models 是一个block中的返回值，一个由BestGroupModel类型的元素组成的数组
 *  @param error 如果出现错误作为返回值返回一个错误信息
 *
 *  @return 当前请求的任务
 */
+ (id)getBestGroupModelCompletionHandle:(void(^)(NSArray<BestGroupModel *> *models, NSError *error))completionHandle;

@end
