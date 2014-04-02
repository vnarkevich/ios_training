//
//  Product.h
//  Shop
//
//  Created by Admin on 19.03.14.
//  Copyright (c) 2014 SaM. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ICommon.h"

@interface Product : NSObject<ICommon>

@property NSInteger categoryId;
@property NSInteger productId;
@property(copy) NSString *name;
@property(retain) NSDecimalNumber *price;
@property(retain) NSDate *startDate;
@property(retain) NSDate *endDate;
@property BOOL isActive;

-(id)initWithProductId:(NSInteger)productId;
-(id)initWithProductId:(NSInteger)productId andName:(NSString*)name;
-(Product*)getProductById:(NSInteger)productId;
-(NSMutableArray*)getAllProducts;

@end
