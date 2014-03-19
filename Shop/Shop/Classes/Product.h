//
//  Product.h
//  Shop
//
//  Created by Admin on 19.03.14.
//  Copyright (c) 2014 SaM. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Product : NSObject

@property NSInteger productId;
@property NSString *name;
@property NSDecimalNumber *price;
@property NSDate *startDate;
@property NSDate *endDate;
@property BOOL *isActive;

-(id)initWithProductId:(NSInteger*)productId;

-(id)initWithProductId:(NSInteger*)productId andName:(NSString*)name;

-(void)getProductById:(NSInteger*)productId;

@end
