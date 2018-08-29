//
// Created by Copper on 2018/8/29.
//

#import <Foundation/Foundation.h>

@interface NSTimer (CPRBlock)

+ (NSTimer *)cpr_timerWithTimeInterval:(NSTimeInterval)interval repeats:(BOOL)repeats block:(void (^)(NSTimer *timer))block;

+ (NSTimer *)cpr_scheduledTimerWithTimeInterval:(NSTimeInterval)interval repeats:(BOOL)repeats block:(void (^)(NSTimer *timer))block;

@end