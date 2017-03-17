//
//  Cloth.m
//  final_term
//
//  Created by Khromos on 2017-03-06.
//  Copyright © 2017 KhromosTech. All rights reserved.
//

#import "Cloth.h"

@implementation Cloth

-(id)initWithProductID:(int)productID productName:(NSString *)productName productPrice:(float)productPrice productMadeInCountry:(NSString *)productMadeInCountry clothMaterial:(NSArray<Material*>*)clothMaterial
{
    self = [super initWithProductID:productID productName:productName productPrice:productPrice productMadeInCountry:productMadeInCountry];
    if(self)
    {
        self.clothMaterial = clothMaterial;
    }
    return self;
}

@end
