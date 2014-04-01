//
//  Category.h
//  Shop
//
//  Created by Admin on 21.03.14.
//  Copyright (c) 2014 SaM. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ProductCategory : NSObject

@property NSInteger categoryId;
@property(copy) NSString *name;

-(NSArray*)getProductsByCategoryId:(NSInteger)categoryId;

@end
