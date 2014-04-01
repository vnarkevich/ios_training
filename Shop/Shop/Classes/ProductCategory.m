//
//  Category.m
//  Shop
//
//  Created by Admin on 21.03.14.
//  Copyright (c) 2014 SaM. All rights reserved.
//

#import "ProductCategory.h"
#import "Product.h"

@interface ProductCategory()

@property(retain) NSMutableArray *products;

@end

@implementation ProductCategory

@synthesize products = _products;

//Default constructor
- (id)init{
    self = [super init];
    if (self) {
        self.categoryId = 1;
    }
    return self;
}

//Get products by category
-(NSArray*)getProductsByCategoryId:(NSInteger)categoryId{
    Product *prod = [[Product alloc] init];
    NSArray *products = [[NSArray alloc] initWithArray:prod.getAllProducts];
    [prod release];
        
    NSMutableArray *categoryProducts = [[NSMutableArray alloc] init];
        
    int count = [products count];
    for (int index = 0; index < count; index++) {
        Product *product = [products objectAtIndex:index];
        if (product.categoryId == categoryId) {
            [categoryProducts addObject:product];
        }
    }
    [products release];
        
    return [[categoryProducts retain] autorelease];
}

- (void)dealloc
{
    [_products release];
    [super dealloc];
}

@end
