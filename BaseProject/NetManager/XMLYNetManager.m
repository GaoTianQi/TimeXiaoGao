//
//  XMLYNetManager.m
//  BaseProject
//
//  Created by ios－54 on 15/11/3.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "XMLYNetManager.h"

#define kDevice @"device":@"iPhone"
#define kKey @"key":@"ranking:album:played:1:2"
#define kPageSize @"pageSize":@"20"
#define kPosition @"position":@"0"
#define kTitle @"title":@"排行榜"
#define kRankingPath @"http://mobile.ximalaya.com/mobile/discovery/v1/rankingList/album" // 音乐分类列表

@implementation XMLYNetManager

// 音乐分类列表
+ (id)getRankingListOfPageId:(NSInteger)pageId CompletionHandle:(void(^)(RankingModel *model, NSError *error))completionHandle
{
    NSDictionary *params = @{kDevice, kKey, @"pageId":@(pageId), kPageSize, kPosition, kTitle};
    return [XMLYNetManager GET:kRankingPath parameters:params completionHandler:^(id responseObj, NSError *error) {
        completionHandle([RankingModel objectWithKeyValues:responseObj], error);
    }];
    
}
// 某音乐分类
+ (id)getAlbumOfAlbumId:(NSNumber *)albumId Page:(NSInteger)page CompletionHandle:(void(^)(AlbumModel *model, NSError *error))completionHandle
{
    NSString *path = [NSString stringWithFormat:@"http://mobile.ximalaya.com/mobile/others/ca/album/track/%@/true/%@/20?device=iPhone", albumId, @(page)];
    return [XMLYNetManager GET:path parameters:nil completionHandler:^(id responseObj, NSError *error) {
        completionHandle([AlbumModel objectWithKeyValues:responseObj], error);
    }];
}


@end
