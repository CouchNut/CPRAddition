//
//  UIView+CPRAddition.m
//  CPRAddition
//
//  Created by Copper on 2018/4/27.
//  Copyright © 2018年 Copper. All rights reserved.
//

#import "UIView+CPRAddition.h"
#import <objc/runtime.h>

static void *CPRTapGestureKey = &CPRTapGestureKey;
static void *CPRTapGestureBlockKey = &CPRTapGestureBlockKey;
static void *CPRLongPressGestureKey = &CPRLongPressGestureKey;
static void *CPRLongPressGestureBlockKey = &CPRLongPressGestureBlockKey;

@implementation UIView (CPRAddition)

- (void)setOriginY:(CGFloat)originY {
    CGRect frame =  self.frame;
    frame.origin.y = originY;
    self.frame = frame;
}

- (CGFloat)originY {
    return CGRectGetMinY(self.frame);
}

- (void)setOriginX:(CGFloat)originX {
    CGRect frame =  self.frame;
    frame.origin.x = originX;
    self.frame = frame;
}

- (CGFloat)originX {
    return CGRectGetMinX(self.frame);
}

- (void)setCenterX:(CGFloat)centerX {
    self.center = CGPointMake(centerX, self.center.y);
}

- (CGFloat)centerX {
    return CGRectGetMidX(self.frame);
}

- (void)setCenterY:(CGFloat)centerY {
    self.center = CGPointMake(self.center.x, centerY);
}

- (CGFloat)centerY {
    return CGRectGetMidY(self.frame);
}

- (void)setWidth:(CGFloat)width {
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
}

- (CGFloat)width {
    return CGRectGetWidth(self.frame);
}

- (void)setHeight:(CGFloat)height {
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame = frame;
}

- (CGFloat)height {
    return CGRectGetHeight(self.frame);
}

- (void)setOrigin:(CGPoint)origin {
    CGRect frame = self.frame;
    frame.origin = origin;
    self.frame = frame;
}

- (CGPoint)origin {
    return self.frame.origin;
}

- (void)setSize:(CGSize)size {
    CGRect frame = self.frame;
    frame.size = size;
    self.frame = frame;
}

- (CGSize)size {
    return self.frame.size;
}

- (__kindof UIViewController *)viewController {
    for (UIView *nextView = [self superview]; nextView; nextView = nextView.superview) {
        UIResponder *nextResponder = [nextView nextResponder];
        if ([nextResponder isKindOfClass:[UIViewController class]]) {
            return (UIViewController *)nextResponder;
        }
    }
    return nil;
}

- (void)cpr_removeAllSubViews {
    [self.subviews enumerateObjectsUsingBlock:^(__kindof UIView * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [obj removeFromSuperview];
    }];
}

- (void)cpr_setCornerRadius:(CGFloat)radius {
    [self cpr_setCornerRadius:radius boderColor:nil borderWidth:0.0f];
}

- (void)cpr_setBoderColor:(UIColor *)color borderWidth:(CGFloat)borderWidth {
    [self cpr_setCornerRadius:0 boderColor:color borderWidth:borderWidth];
}

- (void)cpr_setCornerRadius:(CGFloat)radius boderColor:(UIColor *)color borderWidth:(CGFloat)borderWidth {
    [self cpr_setCornerRadius:radius boderColor:color borderWidth:borderWidth byRoundingCorners:UIRectCornerAllCorners];
}

- (void)cpr_setCornerRadius:(CGFloat)radius boderColor:(UIColor *)color borderWidth:(CGFloat)borderWidth byRoundingCorners:(UIRectCorner)corner {
    CGRect frame = CGRectMake(0, 0, self.width, self.height);
    CAShapeLayer *maskLayer = [CAShapeLayer layer];
    maskLayer.frame = frame;
    
    CAShapeLayer *shapeLayer = [CAShapeLayer layer];
    shapeLayer.frame = frame;
    shapeLayer.fillColor = [UIColor clearColor].CGColor;
    shapeLayer.strokeColor = color.CGColor;
    shapeLayer.lineWidth = borderWidth;
    
    UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:frame
                                               byRoundingCorners:corner
                                                     cornerRadii:CGSizeMake(radius, radius)];
    shapeLayer.path = path.CGPath;
    maskLayer.path = path.CGPath;
    
    [self.layer insertSublayer:shapeLayer atIndex:0];
    [self.layer setMask:maskLayer];
}

// 增加点击手势
- (void)cpr_addTapGestureRecognizer:(void (^)(UITapGestureRecognizer *tap))action
{
    objc_setAssociatedObject(self, CPRTapGestureBlockKey, action, OBJC_ASSOCIATION_COPY);
    UITapGestureRecognizer *tap = objc_getAssociatedObject(self, CPRTapGestureKey);
    if (!tap) {
        tap = [[UITapGestureRecognizer alloc] init];
        tap.numberOfTapsRequired = 1;
        tap.numberOfTouchesRequired = 1;
        [tap addTarget:self action:@selector(cpr_tapGestureAction:)];
        [self addGestureRecognizer:tap];
    }
}

- (void)cpr_tapGestureAction:(UITapGestureRecognizer *)tap
{
    void (^CPRTapGestureBlock)(UITapGestureRecognizer *tap) = objc_getAssociatedObject(self, CPRTapGestureBlockKey);
    if (CPRTapGestureBlock) {
        CPRTapGestureBlock(tap);
    }
}

// 增加长按手势
- (void)cpr_addLongPressGestureRecognizer:(void (^)(UILongPressGestureRecognizer *longPress))action
{
    objc_setAssociatedObject(self, CPRLongPressGestureBlockKey, action, OBJC_ASSOCIATION_COPY);
    UILongPressGestureRecognizer *longPress = objc_getAssociatedObject(self, CPRLongPressGestureKey);
    if (!longPress) {
        longPress = [[UILongPressGestureRecognizer alloc] init];
        [longPress addTarget:self action:@selector(cpr_longPressGestureAction:)];
        [self addGestureRecognizer:longPress];
    }
}

- (void)cpr_longPressGestureAction:(UILongPressGestureRecognizer *)longPress
{
    void (^CPRLongPressGestureBlock)(UILongPressGestureRecognizer *longPress) = objc_getAssociatedObject(self, CPRLongPressGestureBlockKey);
    if (CPRLongPressGestureBlock) {
        CPRLongPressGestureBlock(longPress);
    }
}

@end
