//
//  NSDate+CPRAddition.m
//  CPRAddition
//
//  Created by Copper on 2018/4/27.
//  Copyright © 2018 Copper. All rights reserved.
//

#import "NSDate+CPRAddition.h"

@implementation NSDate (CPRAddition)

- (NSDateComponents *)dateCompoents {
    NSCalendar* calendar = [NSCalendar currentCalendar];
    unsigned unitFlags = NSCalendarUnitYear | NSCalendarUnitMonth |  NSCalendarUnitDay;
    NSDateComponents* comp = [calendar components:unitFlags fromDate:self];
    return comp;
}

- (NSInteger)year {
    return self.dateCompoents.year;
}

- (NSInteger)month {
    return self.dateCompoents.month;
}

- (NSInteger)day {
    return self.dateCompoents.day;
}

- (NSInteger)hour {
    return self.dateCompoents.hour;
}

- (NSInteger)minute {
    return self.dateCompoents.minute;
}

- (NSInteger)second {
    return self.dateCompoents.second;
}

@end
