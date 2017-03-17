//
//  Shoppint_Cart.h
//  final_term
//
//  Created by Khromos on 2017-03-06.
//  Copyright © 2017 KhromosTech. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Product.h"

@interface Shopping_Cart : NSObject
//property
@property NSMutableArray<Product*>* items;
@property NSMutableArray<Product*>* totalPrice;
//Constructor

-(id)initWithItems:(NSMutableArray<Product*>*)items totalPrice:(NSMutableArray<Product*>*) totalPrice;

//Methods(APIs)
-(void)addItem:(Product*) product;
-(void)printProductName;

@end
