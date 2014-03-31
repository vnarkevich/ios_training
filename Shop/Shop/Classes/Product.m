//
//  Product.m
//  Shop
//
//  Created by Admin on 19.03.14.
//  Copyright (c) 2014 SaM. All rights reserved.
//

#import "Product.h"

@interface Product()

@property(retain) NSMutableArray *products;

@end

@implementation Product

@synthesize products = _products;

//Default constructor
- (id)init{
    self = [super init];
    if (self) {
        self.productId = 1;
        self.products = [NSMutableArray array];
    }
    return self;
}

-(id)initWithProductId:(NSInteger)productId{
    self = [self init];
    if (self){
        self.productId = productId;
    }
    return self;
}

-(id)initWithProductId:(NSInteger)productId andName:(NSString *)name{
    self = [self initWithProductId:(NSInteger)productId];
    if (self){
        self.name = name;
    }
    return self;
}


-(Product*)getProductById:(NSInteger)productId {
    [self.products removeAllObjects];
    
    Product *prod = [[Product alloc] initWithProductId:(NSInteger)2 andName:@"Show"];
    prod.price = [NSDecimalNumber decimalNumberWithDecimal:[[NSNumber numberWithFloat:45.45f] decimalValue]];
    prod.isActive = YES;
    
    NSDateFormatter *dateFormater = [[NSDateFormatter alloc] init];
    [dateFormater setDateFormat:@"MM-DD-yyyy"];
    NSDate *startDate = [dateFormater dateFromString:@"01-01-2014"];
    prod.startDate = startDate;
    NSDate *endDate = [dateFormater dateFromString:@"12-31-2014"];
    prod.endDate = endDate;
    
    [self.products addObject:prod];
    [prod release];

    int count = [_products count];
    for (int index = 0; index < count; index++) {
        Product *product = [_products objectAtIndex:index];
        if (product.productId == productId) {
            return [[product retain] autorelease];
        }
    }
    return nil;
}

-(NSMutableArray*)getAllProducts {
    [self.products removeAllObjects];
    
    Product *prod = [[Product alloc] initWithProductId:(NSInteger)2 andName:@"Show"];
    prod.categoryId = 1;
    [self.products addObject:prod];
    [prod release];
    
    return self.products;
}

-(NSString*)description{
    return [NSString stringWithFormat:@"Product: %d %@ %@", self.productId, self.name, self.price];
}

- (void)dealloc
{
    [_products release];
    [super dealloc];
}

@end
