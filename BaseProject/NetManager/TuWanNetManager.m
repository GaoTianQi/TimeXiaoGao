//
//  TuWanNetManager.m
//  BaseProject
//
//  Created by ios－54 on 15/11/3.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "TuWanNetManager.h"

// 很多具有共同特点的数据，可以统一宏定义，比如
#define kAppId  @"appid":@1
#define kAppver @"appver":@"2.1"
#define kClassMore @"classmore":@"indexpic"

// 定义宏，用于向可变数组中添加/删除元素（为防止服务器传输键值发生变化）
#define kRemoveClassMore(dic)    [dic removeObjectForKey:@"classmore"]
#define kSetDtId(string, dic)    [dic setObject:string forKey:@"dtid"]
#define kSetClass(string, dic)   [dic setObject:string forKey:@"class"]
#define kSetMod(string, dic)     [dic setObject:string forKey:@"mod"]

#define kTuWanPath @"http://cache.tuwan.com/app/"


@implementation TuWanNetManager

+ (id)getTuWanDataType:(TuWanDataType)type start:(NSInteger)start CompletionHandle:(void (^)(TuWanModel *, NSError *))completionHandle
{
    /**
     *  把所有接口共有的参数放到switch外面
     */
    NSMutableDictionary *params = [NSMutableDictionary dictionaryWithDictionary:@{kAppId, kAppver, kClassMore, @"start":@(start)}];
    
    switch (type) {
        case TuWanDataTypeDefault:
            break;
        case TuWanDataTypeAnHei3:
            kSetDtId(@"83623", params);
            break;
        case TuWanDataTypeDuJia:
            kSetMod(@"八卦", params);
            break;
        case TuWanDataTypeFengBao:
            kSetDtId(@"31538", params);
            break;
        case TuWanDataTypeGuide: //攻略，视频，图片只有type不同
        case TuWanDataTypeVideo:
        case TuWanDataTypePicture:
            if (type == TuWanDataTypePicture) [params setObject:@"pic" forKey:@"type"];
            if (type == TuWanDataTypeVideo) [params setObject:@"video" forKey:@"type"];
            if (type == TuWanDataTypeGuide) [params setObject:@"guide" forKey:@"type"];
            kSetDtId(@"83623,31528,31537,31538,57067,91821", params);
            kRemoveClassMore(params);
            break;
        case TuWanDataTypeCOS:
            kSetClass(@"cos", params);
            kSetDtId(@"0", params);
            kSetMod(@"cos", params);
            break;
        case TuWanDataTypeHuanHua:
            kRemoveClassMore(params);
            kSetClass(@"heronews", params);
            kSetMod(@"幻化", params);
            break;
        case TuWanDataTypeLuShi:
            kSetDtId(@"31528", params);
            break;
        case TuWanDataTypeMeiNv:
            kSetMod(@"美女", params);
            kSetClass(@"heronews", params);
            [params setObject:@"cos1" forKey:@"typechild"];
            break;
        case TuWanDataTypeMoShou:
            kSetDtId(@"31537", params);
            break;
        case TuWanDataTypeQuWen:
            kSetMod(@"趣闻", params);
            kSetClass(@"heronews", params);
            kSetDtId(@"0", params);
            break;
        case TuWanDataTypeShouWang:
            kRemoveClassMore(params);
            kSetDtId(@"57067", params);
            break;
        case TuWanDataTypeXingJi2:
            kRemoveClassMore(params);
            kSetDtId(@"91821", params);
            break;
        default:
            NSAssert1(NO, @"%s:type类型不正确", __func__);
            break;
    }
    NSString *lastPath = [self percentPathWithPath:kTuWanPath params:params];
    return [TuWanNetManager GET:lastPath parameters:nil completionHandler:^(id responseObj, NSError *error) {
        completionHandle([TuWanModel objectWithKeyValues:responseObj], error);
    }];
}



@end
