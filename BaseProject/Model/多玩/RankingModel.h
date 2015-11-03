//
//  RankingListModel.h
//  BaseProject
//
//  Created by ios－54 on 15/11/3.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "BaseModel.h"

@class RankingListModel;
@interface RankingModel : BaseModel

@property (nonatomic, assign) NSInteger pageId;

@property (nonatomic, assign) NSInteger pageSize;

@property (nonatomic, assign) NSInteger totalCount;

@property (nonatomic, assign) NSInteger maxPageId;

@property (nonatomic, copy) NSString *msg;

@property (nonatomic, strong) NSArray<RankingListModel *> *list;

@property (nonatomic, assign) NSInteger ret;

@end


@interface RankingListModel : BaseModel

@property (nonatomic, assign) NSInteger identify;

@property (nonatomic, copy) NSString *intro;

@property (nonatomic, assign) NSInteger uid;

@property (nonatomic, assign) NSInteger tracks;

@property (nonatomic, assign) NSInteger tracksCounts;

@property (nonatomic, assign) NSInteger playsCounts;

@property (nonatomic, assign) NSInteger isFinished;

@property (nonatomic, copy) NSString *tags;

@property (nonatomic, copy) NSString *coverMiddle;

@property (nonatomic, copy) NSString *title;

@property (nonatomic, assign) NSInteger lastUptrackAt;

@property (nonatomic, copy) NSString *albumCoverUrl290;

@property (nonatomic, assign) NSInteger serialState;

@property (nonatomic, assign) NSInteger albumId;

@property (nonatomic, copy) NSString *nickname;

@property (nonatomic, assign) NSInteger lastUptrackId;

@end

