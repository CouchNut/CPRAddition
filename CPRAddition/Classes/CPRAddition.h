//
//  CPRAddition.h
//  CPRAddition
//
//  Created by Copper on 2018/4/27.
//  Copyright © 2018年 Copper. All rights reserved.
//

#ifndef CPRAddition_h
#define CPRAddition_h

// 弱引用
#define CPRWeakSelf                 __weak typeof(self) weakSelf = self;
// 强引用
#define CPRStrongSelf(weakSelf)     __strong typeof(weakself) strongSelf = (weakSelf);

#define CPRScreenHeight     CGRectGetHeight([UIScreen mainScreen].bounds)
#define CPRScreenWidth      CGRectGetWidth([UIScreen mainScreen].bounds)

#pragma mark - Founudation
#import "CPRAPPUIUtil.h"
#import "NSTimer+CPRBlock.h"
#import "NSDate+CPRAddition.h"
#import "NSString+CPRAddition.h"
#import "NSObject+CPRAddition.h"
#import "NSDictionary+CPRAddition.h"

#pragma mark - UIKit
#import "UIImage+CPRAddition.h"
#import "UIView+CPRAddition.h"
#import "UIColor+CPRAddition.h"
#import "UIDevice+CPRAddition.h"
#import "UIApplication+CPRAddition.h"


#endif /* CPRAddition_h */
