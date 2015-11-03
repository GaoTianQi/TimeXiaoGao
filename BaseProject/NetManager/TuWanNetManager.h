//
//  TuWanNetManager.h
//  BaseProject
//
//  Created by ios－54 on 15/11/3.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "BaseNetManager.h"
#import "TuWanModel.h"
//只要公用一个解析类的请求，就可以合起来写，只需要使用枚举变量，来决定不同的请求地址即可
//如果不会 可以参考汽车之家接口

typedef NS_ENUM(NSUInteger, TuWanDataType) {
    TuWanDataTypeDefault, //默认 头条
    TuWanDataTypeDuJia, //独家/八卦 mode
    TuWanDataTypeAnHei3, //暗黑3 dtid
    TuWanDataTypeMoShou, //魔兽
    TuWanDataTypeFengBao, //风暴
    TuWanDataTypeLuShi, //炉石
    TuWanDataTypeXingJi2, //星际2
    TuWanDataTypeShouWang, //守望者传说
    TuWanDataTypePicture, //图片 type
    TuWanDataTypeGuide, // 攻略
    TuWanDataTypeVideo, // 视频
    TuWanDataTypeHuanHua, // 幻化 mod
    TuWanDataTypeQuWen, // 趣闻
    TuWanDataTypeCOS, // COS
    TuWanDataTypeMeiNv // 美女
};

@interface TuWanNetManager : BaseNetManager

+ (id)getTuWanDataType:(TuWanDataType)type start:(NSNumber *)start CompletionHandle:(void(^)(TuWanModel *model, NSError *error))completionHandle;

@end
