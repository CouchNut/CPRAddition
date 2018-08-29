//
// Created by Copper on 2018/8/29.
//

#import "NSTimer+CPRBlock.h"


@implementation NSTimer (CPRBlock)

+ (NSTimer *)cpr_timerWithTimeInterval:(NSTimeInterval)interval repeats:(BOOL)repeats block:(void (^)(NSTimer *timer))block
{
    if (@available(iOS 10.0, *)) {
        return [NSTimer timerWithTimeInterval:interval repeats:repeats block:block];
    } else {
        return [NSTimer timerWithTimeInterval:interval target:self selector:@selector(cwp_timerBlockSelector:) userInfo:[block copy] repeats:repeats];
    }
}

+ (NSTimer *)cpr_scheduledTimerWithTimeInterval:(NSTimeInterval)interval repeats:(BOOL)repeats block:(void (^)(NSTimer *timer))block
{
    if (@available(iOS 10.0, *)) {
        return [NSTimer scheduledTimerWithTimeInterval:interval repeats:repeats block:block];
    } else {
        return [NSTimer scheduledTimerWithTimeInterval:interval target:self selector:@selector(cwp_timerBlockSelector:) userInfo:[block copy] repeats:repeats];
    }
}

+ (void)cwp_timerBlockSelector:(NSTimer *)timer
{
    void (^block)(NSTimer *timer) = timer.userInfo;

    if (block) {
        block(timer);
    }
}

@end