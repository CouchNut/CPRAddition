//
// Created by Copper on 2018/8/29.
//

#import <UIKit/UIKit.h>

@interface UIApplication (CPRAddition)

#pragma mark app info

+ (NSString *)cpr_appName;

+ (NSString *)cpr_appBundleVersion;

+ (NSString *)cpr_appBundleShortVersion;

@end