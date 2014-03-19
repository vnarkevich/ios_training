//
//  Product.m
//  Shop
//
//  Created by Admin on 19.03.14.
//  Copyright (c) 2014 SaM. All rights reserved.
//

#import "Product.h"

@implementation Product

//Default constructor
- (id)init{
    self = [self initWithProductId:1];
    if (self) {
        
    }
    return self;
}

-(id)initWithProductId:(NSInteger *)productId{
    self = [super init];
    if (self){
        self.productId = *(productId);
    }
}

-(id)initWithProductId:(NSInteger *)productId andName:(NSString *)name{
    self = [super init];
    if (self){
        self.name = name;
    }
}


-(void)getProductById:(NSInteger*)productId {
    return
}


-(NSString*)description{
    return [NSString stringWithFormat:@"Product: %d %@ %f", self.productId, self.name, self.price];
}

@end
