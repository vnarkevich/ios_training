//
//  NSDate+DisplayFormats.m
//  Shop
//
//  Created by Admin on 01.04.14.
//  Copyright (c) 2014 SaM. All rights reserved.
//

#import "NSDate+DisplayFormats.h"
#import "Constants.h"

@implementation NSDate (DisplayFormats)

-(NSString*)toUSDateString{
    NSDateFormatter *dateFormater = [[NSDateFormatter alloc] init];
    [dateFormater setDateFormat:US_DATE];
    return [dateFormater stringFromDate:self];
}

-(NSString*)toInternationalDateString{
    NSDateFormatter *dateFormater = [[NSDateFormatter alloc] init];
    [dateFormater setDateFormat:INTERNATIONAL_DATE];
    return [dateFormater stringFromDate:self];
}

@end
