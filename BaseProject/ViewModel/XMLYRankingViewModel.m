//
//  XMLYViewModel.m
//  BaseProject
//
//  Created by ios－54 on 15/11/4.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "XMLYRankingViewModel.h"

@implementation XMLYRankingViewModel

- (NSInteger)rowNumber
{
    return self.dataArr.count;
}

- (RankingListModel *)getModelForRow:(NSInteger)row
{
    return self.dataArr[row];
}

- (NSURL *)imageURLForRow:(NSInteger)row
{
    NSString *path = [self getModelForRow:row].coverMiddle;
    return [NSURL URLWithString:path];
}

- (NSString *)titleForRow:(NSInteger)row
{
    return [self getModelForRow:row].title;
}

- (NSString *)introForRow:(NSInteger)row
{
    return [self getModelForRow:row].intro;
}

- (NSString *)tracksForRow:(NSInteger)row
{
    NSInteger num = [self getModelForRow:row].tracks;
    return [NSString stringWithFormat:@"%@集", @(num).stringValue];
}

- (void)getDataFromNetCompleteHandle:(CompletionHandle)completionHandle
{
    self.dataTask = [XMLYNetManager getRankingListOfPageId:_pageID CompletionHandle:^(RankingModel *model, NSError *error) {
        if (!error) {
            if (_pageID == 1) {
                [self.dataArr removeAllObjects];
            }
            [self.dataArr addObjectsFromArray:model.list];
        }
        completionHandle(error);
    }];
}

- (void)getMoreDataCompletionHandle:(CompletionHandle)completionHandle
{
    if (_pageID == 3) {
        return;
    }
    _pageID += 1;
    [self getDataFromNetCompleteHandle:completionHandle];
}

- (void)refreshDataCompletionHandle:(CompletionHandle)completionHandle
{
    _pageID = 1;
    [self getDataFromNetCompleteHandle:completionHandle];
}
@end
