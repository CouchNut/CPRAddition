//
// Created by Copper on 2018/8/29.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, CPRGradientType) {
    CPRGradientTypeTopToBottom = 0,
    CPRGradientTypeLeftToRight = 1,
    CPRGradientTypeUpleftToLowright = 2,
    CPRGradientTypeUprightToLowleft = 3,
};

@interface UIImage (CPRColor)

+ (UIImage *)cpr_imageWithColor:(UIColor *)color;

+ (UIImage *)cpr_gradientColorImageFromColors:(NSArray *)colors gradientType:(CPRGradientType)gradientType imgSize:(CGSize)imgSize;

+ (CGContextRef)cwp_createARGBBitmapContextFromImage:(CGImageRef)inImage;

- (UIImage *)cpr_imageWithRoundedCornersSize:(float)cornerRadius;

// 获取image上的某一点的颜色
- (UIColor *)cwp_colorAtPixel:(CGPoint)point;

@end
