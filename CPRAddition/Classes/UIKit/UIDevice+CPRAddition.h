//
//  UIDevice+CPRAddition.h
//  CPRAddition
//
//  Created by Copper on 2018/8/29.
//

#import <UIKit/UIKit.h>

@interface UIDevice (CPRAddition)

/**
 * @return 手机当前语言的编码
 */
+ (NSString *)cpr_currentLanguageCode;

#pragma mark - system version

+ (NSString *)cpr_systemVersion;

+ (BOOL)cpr_isiOS7;

+ (BOOL)cpr_isiOS8;

+ (BOOL)cpr_isiOS9;

+ (BOOL)cpr_isiOS10;

+ (BOOL)cpr_isiOS11;

#pragma mark - device type

+ (BOOL)cpr_isPhoneX;

+ (BOOL)cpr_isPhone6;

+ (BOOL)cpr_isPhoneSE;

+ (BOOL)cpr_isPhone4S;

+ (BOOL)cpr_isPhonePlus;

+ (BOOL)cpr_isiPad;

@end
