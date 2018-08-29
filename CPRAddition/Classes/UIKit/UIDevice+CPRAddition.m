//
//  UIDevice+CPRAddition.m
//  CPRAddition
//
//  Created by Copper on 2018/8/29.
//

#import "UIDevice+CPRAddition.h"
#import "CPRAddition.h"

@implementation UIDevice (CPRAddition)

+ (NSString *)cpr_currentLanguageCode
{
    NSString *result = nil;
    NSString *language = [[NSLocale preferredLanguages] objectAtIndex:0];
    NSDictionary *languageDic = [NSLocale componentsFromLocaleIdentifier:language];
    NSString *lanugageCode = languageDic[@"kCFLocaleLanguageCodeKey"];
    NSString *scriptCode = languageDic[@"kCFLocaleScriptCodeKey"];
    result = lanugageCode;
    if (scriptCode) {
        result = [NSString stringWithFormat:@"%@-%@", lanugageCode, scriptCode];
    }
    return result;
}

+ (NSString *)cpr_systemVersion
{
    return [self currentDevice].systemVersion;
}

+ (BOOL)cpr_isiOS7
{
    return [self cpr_systemVersion].integerValue == 7;
}

+ (BOOL)cpr_isiOS8
{
    return [self cpr_systemVersion].integerValue == 8;
}

+ (BOOL)cpr_isiOS9
{
    return [self cpr_systemVersion].integerValue == 9;
}

+ (BOOL)cpr_isiOS10
{
    return [self cpr_systemVersion].integerValue == 10;
}

+ (BOOL)cpr_isiOS11
{
    return [self currentDevice].systemVersion.integerValue == 11;
}

+ (BOOL)cpr_isPhoneX
{
    return CPRScreenHeight == 812;
}

+ (BOOL)cpr_isPhone6
{
    return CPRScreenHeight == 667;
}

+ (BOOL)cpr_isPhoneSE
{
    return CPRScreenHeight == 568;
}

+ (BOOL)cpr_isPhone4S
{
    return CPRScreenHeight == 480;
}

+ (BOOL)cpr_isPhonePlus
{
    return CPRScreenHeight == 736;
}

+ (BOOL)cpr_isiPad
{
    return UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad;
}

@end
