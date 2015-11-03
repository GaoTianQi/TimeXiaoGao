//
//  TuWanNetManager.m
//  BaseProject
//
//  Created by ios－54 on 15/11/3.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "TuWanNetManager.h"

// 很多具有共同特点的数据，可以统一宏定义，比如
#define kAppver @"appver=2.1"
#define kAppId  @"appid=1"
#define TuWanTouTiao @"http://cache.tuwan.com/app/?appid=1&classmore=indexpic&appid=1&appver=2.1&start=11"
#define TuWanDujia @"http://cache.tuwan.com/app/?appid=1&class=heronews&mod=八卦&appid=1&appver=2.1&start=11"
#define TuWanAnHei3 @"http://cache.tuwan.com/app/?appid=1&dtid=83623&classmore=indexpic&appid=1&appver=2.1&start=11"
#define TuWanMoShou @"http://cache.tuwan.com/app/?appid=1&dtid=31537&classmore=indexpic&appid=1&appver=2.1&start=11"
#define TuWanFengBao @"http://cache.tuwan.com/app/?appid=1&dtid=31538&classmore=indexpic&appid=1&appver=2.1&start=11"
#define TuWanLushi @"http://cache.tuwan.com/app/?appid=1&dtid=31528&classmore=indexpic&appid=1&appver=2.1"
// .....
#define TuWanQuWen @"http://cache.tuwan.com/app/?appid=1&dtid=0&class=heronews&mod=趣闻&classmore=indexpic&appid=1&appver=2.1"
#define TuWanCOS @"http://cache.tuwan.com/app/?appid=1&class=cos&mod=cos&classmore=indexpic&dtid=0&appid=1&appver=2.1"

@implementation TuWanNetManager

+ (id)getTuWanDataType:(TuWanDataType)type start:(NSNumber *)start CompletionHandle:(void (^)(TuWanModel *, NSError *))completionHandle
{
    NSString *path = nil;
    
    switch (type) {
        case TuWanDataTypeDefault:
            path = [NSString stringWithFormat:@"http://cache.tuwan.com/app/?appid=1&classmore=indexpic&appid=1&%@&start=%@", kAppver, start];
            break;
        case TuWanDataTypeAnHei3:
            path = [NSString stringWithFormat:@"http://cache.tuwan.com/app/?appid=1&dtid=83623&classmore=indexpic&appid=1&%@&start=%@",kAppver, start];
            break;
        case TuWanDataTypeDuJia:
            path = [NSString stringWithFormat:@"http://cache.tuwan.com/app/?appid=1&class=heronews&mod=八卦&appid=1&%@&start=%@",kAppver, start];
            break;
        case TuWanDataTypeFengBao:
            path = [NSString stringWithFormat:@"http://cache.tuwan.com/app/?appid=1&dtid=31538&classmore=indexpic&appid=1&%@&start=%@",kAppver, start];
            break;
        case TuWanDataTypeGuide:
            path = [NSString stringWithFormat:@"http://cache.tuwan.com/app/?appid=1&type=guide&dtid=83623,31528,31537,31538,57067,91821&appid=1&%@",kAppver];
            break;
        case TuWanDataTypeCOS:
            path = [NSString stringWithFormat:@"http://cache.tuwan.com/app/?appid=1&class=cos&mod=cos&classmore=indexpic&dtid=0&appid=1&%@", kAppver];
            break;
        case TuWanDataTypeHuanHua:
            path = [NSString stringWithFormat:@"http://cache.tuwan.com/app/?appid=1&class=heronews&mod=幻化&appid=1&%@", kAppver];
            break;
        case TuWanDataTypeLuShi:
            path = [NSString stringWithFormat:@"http://cache.tuwan.com/app/?appid=1&dtid=31528&classmore=indexpic&appid=1&%@", kAppver];
            break;
        case TuWanDataTypeMeiNv:
            path = [NSString stringWithFormat:@"http://cache.tuwan.com/app/?appid=1&class=heronews&mod=美女&classmore=indexpic&typechild=cos1&appid=1&%@", kAppver];
            break;
        case TuWanDataTypeMoShou:
            path = [NSString stringWithFormat:@"http://cache.tuwan.com/app/?appid=1&dtid=31537&classmore=indexpic&appid=1&%@&start=%@", kAppver, start];
            break;
        case TuWanDataTypePicture:
            path = [NSString stringWithFormat:@"http://cache.tuwan.com/app/?appid=1&type=pic&dtid=83623,31528,31537,31538,57067,91821&appid=1&%@", kAppver];
            break;
        case TuWanDataTypeQuWen:
            path = [NSString stringWithFormat:@"http://cache.tuwan.com/app/?appid=1&dtid=0&class=heronews&mod=趣闻&classmore=indexpic&appid=1&%@", kAppver];
            break;
        case TuWanDataTypeShouWang:
            path = [NSString stringWithFormat:@"http://cache.tuwan.com/app/?appid=1&dtid=57067&appid=1&%@", kAppver];
            break;
        case TuWanDataTypeVideo:
            path = [NSString stringWithFormat:@"http://cache.tuwan.com/app/?appid=1&type=video&dtid=83623,31528,31537,31538,57067,91821&appid=1&%@", kAppver];
            break;
        case TuWanDataTypeXingJi2:
            path = [NSString stringWithFormat:@"http://cache.tuwan.com/app/?appid=1&dtid=91821&appid=1&%@", kAppver];
            break;
        default:
            break;
    }
    NSString *lastPath = [self percentPathWithPath:path params:nil];
    return [TuWanNetManager GET:lastPath parameters:nil completionHandler:^(id responseObj, NSError *error) {
        completionHandle([TuWanModel objectWithKeyValues:responseObj], error);
    }];
}

/*  习惯
 for(int i = 0; i < params.allKeys.count; i ++)
 假设for循环循环1000次，params.allKeys实际上调用的[params allKeys], 会调用allKeys1000次。 OC语言特性是runtime，实际上我们调用一个方法，底层操作是 在一个方法列表中搜索你调用的方法所在的地址，然后调用完毕之后把这个方法名转移到常用方法列表。所以如果再次执行某个方法就在常用方法列表中搜索调用，效率更高。
 */
//http://cache.tuwan.com/app/?appid=1&class=heronews&mod=八卦&appid=1&appver=2.1
// 把path和参数拼接起来，把字符串的中文转换为 % 号形式，因为大多数服务器不支持中文编码
+ (NSString *)percentPathWithPath:(NSString *)path params:(NSDictionary *)params
{
    NSMutableString *percentPath = [NSMutableString stringWithString:path];
    NSArray *keys = params.allKeys;
    NSInteger count = keys.count;
    for (int i = 0; i < count; i++) {
        if (i == 0) {
            [percentPath appendFormat:@"?%@=%@", keys[i], params[keys[i]]];
        }else{
            [percentPath appendFormat:@"&%@=%@", keys[i], params[keys[i]]];
        }
    }
    //  返回的时候需要将字符串中的中文转为%形式
    return [percentPath stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
}




@end
