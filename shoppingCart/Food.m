//
//  Food.m
//  final_term
//
//  Created by Khromos on 2017-03-06.
//  Copyright © 2017 KhromosTech. All rights reserved.
//

#import "Food.h"

@implementation Food

- (id) initWithProductID:(int)productID productName:(NSString*)productName productPrice:(float)productPrice productMadeInCountry:(NSString*)productMadeInCountry foodCalorie:(int)foodCalorie foodSize:(int)foodSize foodIngredient:(NSArray<NSString*>*)foodIngredient
{
    self = [super initWithProductID:productID productName:productName productPrice:productPrice productMadeInCountry:productMadeInCountry];
    if(self)
    {
        self.foodCalorie = foodCalorie;
        self.foodSize = foodSize;
        self.foodIngredient = foodIngredient;
    }
    return self;
}

@end
