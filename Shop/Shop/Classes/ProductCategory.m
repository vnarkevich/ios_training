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
@property(retain) NSMutableArray *productCategories;

@end

@implementation ProductCategory

@synthesize products = _products;
@synthesize productCategories = _productCategories;

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

-(ProductCategory*)getCategoryById:(NSInteger)Id{
    [self.productCategories removeAllObjects];
    
    ProductCategory *productCategory = [[ProductCategory alloc] init];
    productCategory.name = @"Tablets";
    [self.productCategories addObject:productCategory];
    [productCategory release];

    int count = [_productCategories count];
    for (int index = 0; index < count; index++) {
        ProductCategory *cat = [_productCategories objectAtIndex:index];
        if (cat.categoryId == Id) {
            return [[cat retain] autorelease];
        }
    }
    return nil;
}

-(NSString*)getDescriptionById:(NSInteger)Id {
    ProductCategory *cat = [self getCategoryById:(NSInteger)Id];
    if (cat != nil) {
        return [cat description];
    }
    return @"";
}

-(NSString*)description{
    return [NSString stringWithFormat:@"Product: %d %@", self.categoryId, self.name];
}

- (void)dealloc
{
    [_products release];
    [super dealloc];
}

@end
