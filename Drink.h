//
//  Drink.h
//  final_term
//
//  Created by Khromos on 2017-03-06.
//  Copyright © 2017 KhromosTech. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Product.h"

@interface Drink : Product
//property
@property BOOL isDrinkDiet;
@property int drinkSize;

- (id) initWithProductID:(int)productID productName:(NSString*)productName productPrice:(float)productPrice productMadeInCountry:(NSString*)productMadeInCountry isDrinkDiet:(BOOL)isDrinkDiet drinkSize:(int)drinkSize;

@end
