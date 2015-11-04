//
//  XMLYViewModel.h
//  BaseProject
//
//  Created by ios－54 on 15/11/4.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "BaseViewModel.h"
#import "XMLYNetManager.h"

@interface XMLYRankingViewModel : BaseViewModel

@property (nonatomic, assign) NSInteger pageID;
// 返回音乐列表的的行数
@property (nonatomic, assign) NSInteger rowNumber;

/**
 *  获取音乐列表中第row行的图片
 *
 *  @param row 行数
 *
 *  @return 返回这个图片的URL地址
 */
- (NSURL *)imageURLForRow:(NSInteger)row;

/**
 *  获取音乐列表中第row行的标题 title
 *
 *  @param row 行数
 *
 *  @return 返回这个标题的内容
 */
- (NSString *)titleForRow:(NSInteger)row;

/**
 *  获取音乐列表中第row行音乐的简介 intro
 *
 *  @param row 行数
 *
 *  @return 返回简介的内容
 */
- (NSString *)introForRow:(NSInteger)row;

/**
 *  获取音乐列表中第row行音乐的总集数
 *
 *  @param row 行数
 *
 *  @return 返回音乐的数量
 */
- (NSString *)tracksForRow:(NSInteger)row;

@end
