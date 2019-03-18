//
//  UIColor+CPRAddition.m
//  CPRAddition
//
//  Created by Copper on 2018/4/27.
//  Copyright © 2018年 Copper. All rights reserved.
//

#import "UIColor+CPRAddition.h"

@implementation UIColor (CPRAddition)

+ (UIColor *)cpr_colorWithHex:(long)hexColor {
    return [UIColor cpr_colorWithHex:hexColor alpha:1.];
}

+ (UIColor *)cpr_colorWithHex:(long)hexColor alpha:(float)opacity {
    float red = ((float)((hexColor & 0xFF0000) >> 16))/255.0;
    float green = ((float)((hexColor & 0xFF00) >> 8))/255.0;
    float blue = ((float)(hexColor & 0xFF))/255.0;
    return [UIColor colorWithRed:red green:green blue:blue alpha:opacity];
}

@end
