//
//  Drink.m
//  final_term
//
//  Created by Khromos on 2017-03-06.
//  Copyright © 2017 KhromosTech. All rights reserved.
//

#import "Drink.h"

@implementation Drink

- (id) initWithProductID:(int)productID productName:(NSString*)productName productPrice:(float)productPrice productMadeInCountry:(NSString*)productMadeInCountry isDrinkDiet:(BOOL)isDrinkDiet drinkSize:(int)drinkSize
{
    self = [super initWithProductID:productID productName:productName productPrice:productPrice productMadeInCountry:productMadeInCountry];
    if(self)
    {
        self.isDrinkDiet = isDrinkDiet;
        self.drinkSize = drinkSize;
    }
    
    return self;
}


@end
