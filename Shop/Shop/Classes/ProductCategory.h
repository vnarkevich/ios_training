//
//  Category.h
//  Shop
//
//  Created by Admin on 21.03.14.
//  Copyright (c) 2014 SaM. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ICommon.h"

@interface ProductCategory : NSObject<ICommon>

@property NSInteger categoryId;
@property(copy) NSString *name;

-(NSArray*)getProductsByCategoryId:(NSInteger)categoryId;

-(ProductCategory*)getCategoryById:(NSInteger)Id;

@end
