//
//  NSDictionary+CPRAddition.m
//  CPRAddition
//
//  Created by Copper on 2018/4/27.
//  Copyright © 2018年 Copper. All rights reserved.
//

#import "NSDictionary+CPRAddition.h"

@implementation NSDictionary (CPRAddition)

@end

@implementation NSDictionary (JSON)

+ (NSString *)cpr_JSONStringFromDictionary:(NSDictionary *)dict {
    if (![NSJSONSerialization isValidJSONObject:dict]) {
        return nil;
    }
    NSError *error;
    NSData *data = [NSJSONSerialization dataWithJSONObject:dict options:NSJSONWritingSortedKeys error:&error];
    if (error) {
        return nil;
    }
    NSString *json = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    return json;
}

+ (NSDictionary *)cpr_dictionaryFromJSONString:(NSString *)json {
    if (json.length <= 0 || json == nil) {
        return nil;
    }
    // 处理JSON字符串中的特殊字符
    NSArray *spectialChars = @[@"\r\n",
                               @"\n",
                               @"\t",
                               @"\\'"
                               ];
    for (NSString *spectialChar in spectialChars) {
        json = [json stringByReplacingOccurrencesOfString:spectialChar withString:@""];
    }
    NSData *data = [json dataUsingEncoding:NSUTF8StringEncoding];
    NSError *error = nil;
    NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableLeaves error:&error];
    if (error) {
        return nil;
    }
    return dict;
}

@end
