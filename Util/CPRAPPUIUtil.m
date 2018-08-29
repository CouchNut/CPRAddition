//
//  CPRAPPUIUtil.m
//  CPRAddition
//
//  Created by Copper on 2018/8/29.
//

#import "CPRAPPUIUtil.h"
#import "UIDevice+CPRAddition.h"

@implementation CPRAPPUIUtil

+ (CGFloat)cpr_iPhoneXTopSpace
{
    return [UIDevice cpr_isPhoneX] ? 44.0f : 0.0f;
}

+ (CGFloat)cpr_iPhoneXBottomSpace
{
    return [UIDevice cpr_isPhoneX] ? 34.0f : 0.0f;
}

+ (CGFloat)cpr_heightOfNavigation
{
    return [self cpr_heightOfStatusBar] + [self cpr_heightOfNavigationBar];
}

+ (CGFloat)cpr_heightOfNavigationBar
{
    return 44.0f;
}

+ (CGFloat)cpr_heightOfTabBar
{
    return 49.0f + [self cpr_iPhoneXBottomSpace];
}

+ (CGFloat)cpr_heightOfStatusBar
{
    return [UIDevice cpr_isPhoneX] ? 44.0f : 20.0f;
}

+ (CGFloat)cpr_heightOfLargeNavigation
{
    return 95.0f + [self cpr_heightOfStatusBar];
}
@end
