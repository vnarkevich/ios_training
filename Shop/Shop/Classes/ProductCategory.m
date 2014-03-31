//
//  Category.m
//  Shop
//
//  Created by Admin on 21.03.14.
//  Copyright (c) 2014 SaM. All rights reserved.
//

#import "ProductCategory.h"
#import "Product.h"

@implementation ProductCategory

//Default constructor
- (id)init{
    self = [super init];
    if (self) {
        self.categoryId = 1;
    }
    return self;
}

-(NSMutableArray*)getProductsByCategoryId:(NSInteger)categoryId{
    Product *prod = [[Product alloc] init];
    NSMutableArray *products = [[NSMutableArray alloc] initWithObjects: prod.getAllProducts, nil];
    [prod release];
    
    NSMutableArray *categoryProducts = [NSMutableArray init];
    
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

@end
