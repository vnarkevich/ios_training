//
//  NSString+Additions.m
//  Shop
//
//  Created by Admin on 01.04.14.
//  Copyright (c) 2014 SaM. All rights reserved.
//

#import "NSString+Additions.h"
#import "Constants.h"

@implementation NSString (Additions)

-(NSDate*)toUSDate{
    NSDateFormatter *dateFormater = [[NSDateFormatter alloc] init];
    [dateFormater setDateFormat:US_DATE];
    return [dateFormater dateFromString:self];
}

@end
