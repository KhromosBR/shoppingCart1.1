//
//  Food.h
//  final_term
//
//  Created by Khromos on 2017-03-06.
//  Copyright © 2017 KhromosTech. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Product.h"

@interface Food : Product
//property
@property int foodCalorie;
@property int foodSize;
@property (strong, nonatomic)NSArray<NSString*>*foodIngredient;

- (id) initWithProductID:(int)productID productName:(NSString*)productName productPrice:(float)productPrice productMadeInCountry:(NSString*)productMadeInCountry foodCalorie:(int)foodCalorie foodSize:(int)foodSize foodIngredient:(NSArray<NSString*>*)foodIngredient;


@end
