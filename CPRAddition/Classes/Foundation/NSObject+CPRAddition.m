//
//  NSObject+CPRAddition.m
//  CPRAddition
//
//  Created by Copper on 2018/8/30.
//

#import "NSObject+CPRAddition.h"
#import <objc/runtime.h>

@implementation NSObject (CPRAddition)

+ (void)cpr_swizzleMethod:(SEL)originSEL withMethod:(SEL)newSEL
{
    Class cls = [self class];
    
    Method originMethod = class_getClassMethod(cls, originSEL);
    Method newMethod = class_getClassMethod(cls, newSEL);
    
    BOOL didAddMethod = class_addMethod(cls, originSEL, method_getImplementation(originMethod), method_getTypeEncoding(originMethod));
    
    if (didAddMethod) {
        class_replaceMethod(cls, newSEL, method_getImplementation(originMethod), method_getTypeEncoding(originMethod));
    }
    else {
        method_exchangeImplementations(originMethod, newMethod);
    }
}

@end
