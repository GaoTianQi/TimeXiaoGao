//
//  BaseNetManager.h
//  BaseProject
//
//  Created by jiyingxin on 15/10/21.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import <Foundation/Foundation.h>

#define kCompletionHandle completionHandle:(void(^)(id model, NSError *error))completionHandle

@interface BaseNetManager : NSObject

/** 对AFHTTPSessionManager的GET请求方法进行了封装*/
+ (id)GET:(NSString *)path parameters:(NSDictionary *)params completionHandler:(void(^)(id responseObj, NSError *error))complete;

/** 对AFHTTPSessionManager的POST请求方法进行了封装*/
+ (id)POST:(NSString *)path parameters:(NSDictionary *)params completionHandler:(void(^)(id responseObj, NSError *error))complete;

/** 
 *  为了应付某些服务器对于中文字符串不支持的情况， 需要转化中文为%形式的字符串
 *
 *  @param path    请求的路径，即 ？ 前面的部分
 *  @param params  请求的参数，即 ？ 后面的部分
 *
 *  @return 转化 路径+参数 拼接出的字符串中的中文为%号形式的
 */
+ (NSString *)percentPathWithPath:(NSString *)path params:(NSDictionary *)params;
@end
