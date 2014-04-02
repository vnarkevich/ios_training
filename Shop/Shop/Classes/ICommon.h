//
//  ICommon.h
//  Shop
//
//  Created by Admin on 02.04.14.
//  Copyright (c) 2014 SaM. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ICommon <NSObject>

@required
-(NSString*)getDescriptionById:(NSInteger)Id;

@end
