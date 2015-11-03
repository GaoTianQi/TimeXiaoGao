//
//  AlbumModel.m
//  BaseProject
//
//  Created by ios－54 on 15/11/3.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "AlbumModel.h"

@implementation AlbumModel

@end
@implementation AlbumListAlbumModel

@end


@implementation AlbumTracksModel

+ (NSDictionary *)objectClassInArray{
    return @{@"list" : [AlbumListModel class]};
}

@end


@implementation AlbumListModel

@end


