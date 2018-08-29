//
// Created by Copper on 2018/8/29.
//

#import <Foundation/Foundation.h>

@interface UIApplication (CPRAddition)

#pragma mark app info

+ (NSString *)cpr_appName;

+ (NSString *)cpr_appBundleVersion;

+ (NSString *)cpr_appBundleShortVersion;

@end