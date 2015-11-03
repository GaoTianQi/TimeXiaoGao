//
//  XMLYNetManager.h
//  BaseProject
//
//  Created by ios－54 on 15/11/3.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "BaseNetManager.h"
#import "XMLYModel.h"

@interface XMLYNetManager : BaseNetManager

/**
 *  获取音乐分类列表
 *
 *  @param pageId           当前加载的页码
 *  @param completionHandle 一个block，返回从服务器上请求到的数据
 *
 *  @return 返回当前请求的任务
 */
+ (id)getRankingListOfPageId:(NSInteger)pageId CompletionHandle:(void(^)(RankingModel *model, NSError *error))completionHandle;

/**
 *  某音乐分类内容列表
 *
 *  @param albumId          唱片的id
 *  @param page             当前加载的页码
 *  @param completionHandle 一个block，返回从服务器上请求到的数据
 *
 *  @return 返回当前请求的任务
 */
+ (id)getAlbumOfAlbumId:(NSNumber *)albumId Page:(NSInteger)page CompletionHandle:(void(^)(AlbumModel *model, NSError *error))completionHandle;

@end
