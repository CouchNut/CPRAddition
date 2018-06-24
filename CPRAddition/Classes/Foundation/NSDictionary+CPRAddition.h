//
//  NSDictionary+CPRAddition.h
//  CPRAddition
//
//  Created by Copper on 2018/4/27.
//  Copyright © 2018年 Copper. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (CPRAddition)

@end

/**
 字典与JSON字符串的相互转化
 */
@interface NSDictionary (JSON)

/**
 将 NSDictionary 转换为一个 JSON 字符串返回

 @param dict NSDictionary 变量
 @return JSON 字符串
 */
+ (NSString *)cpr_JSONStringFromDictionary:(NSDictionary *)dict;

/**
 将 JSON 字符串转换为一个 NSDictionary 返回

 @param json JSON 字符串
 @return NSDictionary 变量
 */
+ (NSDictionary *)cpr_dictionaryFromJSONString:(NSString *)json;

@end
