//
//  DuoWanNetManager.m
//  BaseProject
//
//  Created by ios－54 on 15/11/3.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "DuoWanNetManager.h"

//很多具有共同点的东西，可以统一宏定义，比如
//凡是自己写的宏定义 都需要用k开头，这是编码习惯
#define kOSType       @"OSType":@"iOS9.1" //9.1是当前手机系统版本，需要到info文件中去取
//把path写到文件头部，使用宏定义形势。 方便后期维护
#define kVersionName @"versionName":@"2.4.0"
#define kV @"v":@140
#define kHeroPath  @"http://lolbox.duowan.com/phone/apiHeroes.php"   //免费+全部英雄
#define kHeroSkinPath @"http://box.dwstatic.com/apiHeroSkin.php" //英雄皮肤
#define kHeroVideoPath @"http://box.dwstatic.com/apiVideoesNormalDuowan.php" //英雄视频
#define kHeroCZPath @"http://db.duowan.com/lolcz/img/ku11/api/lolcz.php" // 英雄出装
#define kHeroDetailPath @"http://lolbox.duowan.com/phone/apiHeroDetail.php" // 英雄详情
#define kHeroGiftPath @"http://box.dwstatic.com/apiHeroSuggestedGiftAndRun.php" // 英雄天赋
#define kHeroChangePath @"http://db.duowan.com/boxnews/heroinfo.php" // 英雄改动
#define kHeroWeekDataPath @"http://183.61.12.108/apiHeroWeekData.php" // 一周数据
#define kToolMenuPath @"http://box.dwstatic.com/apiToolMenu.php" // 游戏百科列表
#define kZBCategoryPath @"http://lolbox.duowan.com/phone/apiZBCategory.php" // 装备分类
#define kZBItemPath @"http://lolbox.duowan.com/phone/apiZBItemList.php" // 某分类装备分类
#define kZBItemDetailPath @"http://lolbox.duowan.com/phone/apiItemDetail.php"  // 装备详情
#define kGiftPath @"http://lolbox.duowan.com/phone/apiGift.php" // 天赋
#define kRunePath @"http://lolbox.duowan.com/phone/apiRunes.php" // 符文列表
#define kSumAbilityPath @"http://lolbox.duowan.com/phone/apiSumAbility.php" // 召唤师列表
#define kBestGroupPath @"http://box.dwstatic.com/apiHeroBestGroup.php" // 最佳阵容

@implementation DuoWanNetManager

+ (id)getFreeHeroModelCompletionHandle:(void (^)(FreeHeroModel *, NSError *))completionHandle
{
    NSDictionary *params = @{@"type":@"free", @"v":@140, kOSType};
    return [DuoWanNetManager GET:kHeroPath parameters:params completionHandler:^(id responseObj, NSError *error) {
        completionHandle([FreeHeroModel objectWithKeyValues:responseObj], error);
    }];
}
// 全部英雄
+ (id)getAllHeroModelCompletionHandle:(void(^)(AllHeroModel *model, NSError *error))completionHandle
{
    NSDictionary *params = @{@"type":@"all", @"v":@140, kOSType};
    return [DuoWanNetManager GET:kHeroPath parameters:params completionHandler:^(id responseObj, NSError *error) {
        completionHandle([AllHeroModel objectWithKeyValues:responseObj], error);
    }];
}
// 英雄皮肤
+ (id)getHeroSkinOfHeroName:(NSString *)enName CompletionHandle:(void (^)(NSArray<HeroSkinModel *> *, NSError *))completionHandle
{
    NSDictionary *params = @{@"hero":enName, kV, kOSType, kVersionName};
    return [DuoWanNetManager GET:kHeroSkinPath parameters:params completionHandler:^(id responseObj, NSError *error) {
        completionHandle([HeroSkinModel objectArrayWithKeyValuesArray:responseObj], error);
    }];
}
// 英雄视频
+ (id)getHeroVideoOfHeroName:(NSString *)enName Page:(NSInteger)page CompletionHandle:(void (^)(NSArray<HeroVideoModel *> *, NSError *))completionHandle
{
    NSDictionary *params = @{@"action":@"l", @"p":@(page), kV, kOSType, @"tag":enName, @"src":@"letv"};
    return [DuoWanNetManager GET:kHeroVideoPath parameters:params completionHandler:^(id responseObj, NSError *error) {
        completionHandle([HeroVideoModel objectArrayWithKeyValuesArray:responseObj], error);
    }];
    
}
// 英雄出装
+ (id)getHeroCZOfHeroName:(NSString *)enName CompletionHandle:(void (^)(NSArray<HeroCZModel *> *, NSError *))completionHandle
{
    NSDictionary *params = @{kV, kOSType, @"championName":enName, @"limit":@7};
    return [DuoWanNetManager GET:kHeroCZPath parameters:params completionHandler:^(id responseObj, NSError *error) {
        completionHandle([HeroCZModel objectArrayWithKeyValuesArray:responseObj], error);
    }];
}
// 英雄资料
+ (id)getHeroDetailOfName:(NSString *)enName CompletionHandle:(void (^)(HeroDetialModel *, NSError *))completionHandle
{
    NSDictionary *params = @{kOSType, @"heroName":enName, kV};
    return [DuoWanNetManager  GET:kHeroDetailPath parameters:params completionHandler:^(id responseObj, NSError *error) {
        completionHandle([HeroDetialModel objectWithKeyValues:responseObj], error);
    }];
}
// 天赋符文
+ (id)getHeroGiftOfName:(NSString *)enName CompletionHandle:(void (^)(NSArray<HeroGiftModel *> *, NSError *))completionHandle
{
    NSDictionary *params = @{@"hero":enName, kV, kOSType};
    return [DuoWanNetManager GET:kHeroGiftPath parameters:params completionHandler:^(id responseObj, NSError *error) {
        completionHandle([HeroGiftModel objectArrayWithKeyValuesArray:responseObj], error);
    }];
}
// 英雄改动
+ (id)getHeroChangeOfName:(NSString *)enName CompletionHandle:(void (^)(HeroChangeModel *, NSError *))completionHandle
{
    NSDictionary *params = @{@"name":enName, kV, kOSType};
    return [DuoWanNetManager GET:kHeroChangePath parameters:params completionHandler:^(id responseObj, NSError *error) {
        completionHandle([HeroChangeModel objectWithKeyValues:responseObj], error);
    }];
}
// 一周数据
+ (id)getHeroWeekDataOfHeroId:(NSInteger)heroId CompletionHandle:(void(^)(HeroWeekDataModel *model, NSError *error))completionHandle
{
    NSDictionary *params = @{@"heroId":@(heroId)};
    return [DuoWanNetManager GET:kHeroWeekDataPath parameters:params completionHandler:^(id responseObj, NSError *error) {
        completionHandle([HeroWeekDataModel objectWithKeyValues:responseObj], error);
    }];
}

#pragma mark - 游戏百科-----------------------
// 游戏百科列表
+ (id)getToolMenuModelCompletionHandle:(void(^)(NSArray<ToolMenuModel *> *models, NSError *error))completionHandle
{
    NSDictionary *params = @{@"category":@"database", kV, kOSType, kVersionName};
    return [DuoWanNetManager GET:kToolMenuPath parameters:params completionHandler:^(id responseObj, NSError *error) {
        completionHandle([ToolMenuModel objectArrayWithKeyValuesArray:responseObj], error);
    }];
}
// 装备分类
+ (id)getZBCategoryModelCompletionHandle:(void(^)(NSArray<ZBCategoryModel *> *models, NSError *error))completionHandle
{
    NSDictionary *params = @{kV, kOSType, kVersionName};
    return [DuoWanNetManager GET:kZBCategoryPath parameters:params completionHandler:^(id responseObj, NSError *error) {
        completionHandle([ZBCategoryModel objectArrayWithKeyValuesArray:responseObj], error);
    }];
}
// 某装备分类
+ (id)getZbItemModelOfTag:(NSString *)tag CompletionHandle:(void(^)(NSArray<ZBItemModel *> *models, NSError *error))completionHandle
{
    NSDictionary *params = @{@"tag":tag, kV, kOSType, kVersionName};
    return [DuoWanNetManager GET:kZBItemPath parameters:params completionHandler:^(id responseObj, NSError *error) {
        completionHandle([ZBItemModel objectArrayWithKeyValuesArray:responseObj], error);
    }];
}
// 装备详情
+ (id)getItemDetailOfId:(NSString *)identify CompletionHandle:(void(^)(ItemDetailModel *model, NSError *error))completionHandle
{
    NSDictionary *params = @{@"id":identify, kV, kOSType};
    return [DuoWanNetManager GET:kZBItemDetailPath parameters:params completionHandler:^(id responseObj, NSError *error) {
        completionHandle([ItemDetailModel objectWithKeyValues:responseObj], error);
    }];
}
// 天赋
+ (id)getGiftModelCompletionHandle:(void(^)(GifiModel *model, NSError *error))completionHandle
{
    NSDictionary *parms = @{kV, kOSType};
    return [DuoWanNetManager GET:kGiftPath parameters:parms completionHandler:^(id responseObj, NSError *error) {
        completionHandle([GifiModel objectWithKeyValues:responseObj], error);
    }];
}
// 符文列表
+ (id)getRuneModelCompletionHandle:(void(^)(RuneModel *model, NSError *error))completionHandle
{
    NSDictionary *params = @{kV, kOSType};
    return [DuoWanNetManager GET:kRunePath parameters:params completionHandler:^(id responseObj, NSError *error) {
        completionHandle([RuneModel objectWithKeyValues:responseObj], error);
    }];
}
// 召唤师技能类表
+ (id)getSumAbilityModelCompletionHandle:(void(^)(NSArray<SumAbilityModel *> *models, NSError *error))completionHandle
{
    NSDictionary *params = @{kV, kOSType};
    return [DuoWanNetManager GET:kSumAbilityPath parameters:params completionHandler:^(id responseObj, NSError *error) {
        completionHandle([SumAbilityModel objectArrayWithKeyValuesArray:responseObj], error);
    }];
}
// 最佳阵容
+ (id)getBestGroupModelCompletionHandle:(void(^)(NSArray<BestGroupModel *> *models, NSError *error))completionHandle
{
    NSDictionary *params = @{kV, kOSType};
    return [DuoWanNetManager GET:kBestGroupPath parameters:params completionHandler:^(id responseObj, NSError *error) {
        completionHandle([BestGroupModel objectArrayWithKeyValuesArray:responseObj], error);
    }];
    
}

@end
