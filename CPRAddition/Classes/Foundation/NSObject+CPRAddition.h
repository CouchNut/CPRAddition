//
//  NSObject+CPRAddition.h
//  CPRAddition
//
//  Created by Copper on 2018/8/30.
//

#import <Foundation/Foundation.h>

@interface NSObject (CPRAddition)

+ (void)cpr_swizzleMethod:(SEL)originSEL withMethod:(SEL)newSEL;

@end
