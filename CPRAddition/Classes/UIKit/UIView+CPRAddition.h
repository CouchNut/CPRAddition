//
//  UIView+CPRAddition.h
//  CPRAddition
//
//  Created by Copper on 2018/4/27.
//  Copyright © 2018年 Copper. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (CPRAddition)

@property(nonatomic) CGFloat originX;
@property(nonatomic) CGFloat originY;
@property(nonatomic) CGFloat centerX;
@property(nonatomic) CGFloat centerY;
@property(nonatomic) CGFloat width;
@property(nonatomic) CGFloat height;
@property(nonatomic) CGPoint origin;
@property(nonatomic) CGSize size;

/**
 获取当前view所在的控制器
 */
- (__kindof UIViewController *)viewController;

/**
 移除所有的 subView
 */
- (void)cpr_removeAllSubViews;

/**
 设置 UIView 的四角弧度

 @param radius 四角弧度
 */
- (void)cpr_setCornerRadius:(CGFloat)radius;

/**
 设置 UIView 的边框颜色以及边框宽度

 @param color 边框颜色
 @param borderWidth 边框宽度
 */
- (void)cpr_setBoderColor:(UIColor *)color borderWidth:(CGFloat)borderWidth;

/**
 设置 UIView 的边框颜色、宽度以及四角弧度

 @param radius 四角弧度
 @param color 边框颜色
 @param borderWidth 边框宽度
 */
- (void)cpr_setCornerRadius:(CGFloat)radius boderColor:(UIColor *)color borderWidth:(CGFloat)borderWidth;

/**
 设置 UIView 某个顶角的弧度、边框颜色、边框宽度

 @param radius 弧度
 @param color 边框颜色
 @param borderWidth 边框宽度
 @param corner 需要设置为圆角的那个角
 */
- (void)cpr_setCornerRadius:(CGFloat)radius boderColor:(UIColor *)color borderWidth:(CGFloat)borderWidth byRoundingCorners:(UIRectCorner)corner;

@end
