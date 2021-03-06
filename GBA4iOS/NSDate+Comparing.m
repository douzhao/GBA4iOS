//
//  NSDate+Comparing.m
//  GBA4iOS
//
//  Created by Riley Testut on 1/5/14.
//  Copyright (c) 2014 Riley Testut. All rights reserved.
//

#import "NSDate+Comparing.h"

@implementation NSDate (Comparing)

- (NSInteger)daysSinceDate:(NSDate *)date
{
    // Return the inverse
    return [date daysUntilDate:self];
}

- (NSInteger)daysUntilDate:(NSDate *)date
{
    if (date == nil)
    {
        return 0;
    }
    
    NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
    NSInteger startDay = [calendar ordinalityOfUnit:NSDayCalendarUnit inUnit:NSEraCalendarUnit forDate:self];
    NSInteger endDay = [calendar ordinalityOfUnit:NSDayCalendarUnit inUnit:NSEraCalendarUnit forDate:date];
    return endDay - startDay;
}

@end
