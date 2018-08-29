//
// Created by Copper on 2018/8/29.
//

#import "UIApplication+CPRAddition.h"


@implementation UIApplication (CPRAddition)

+ (NSString *)cpr_appName
{
    NSDictionary *infoDict = [[NSBundle mainBundle] infoDictionary];
    NSString *appName = [infoDict objectForKey:@"CFBundleName"];
    return appName;
}

+ (NSString *)cpr_appBundleVersion
{
    NSDictionary *infoDict = [[NSBundle mainBundle] infoDictionary];
    NSString *appVersion = [infoDict objectForKey:@"CFBundleVersion"];
    return appVersion;
}

+ (NSString *)cpr_appBundleShortVersion
{
    NSDictionary *infoDict = [[NSBundle mainBundle] infoDictionary];
    NSString *appShortVersion = [infoDict objectForKey:@"CFBundleShortVersionString"];
    return appShortVersion;
}

@end