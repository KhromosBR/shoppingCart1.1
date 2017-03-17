//
//  Product.m
//  final_term
//
//  Created by Khromos on 2017-03-06.
//  Copyright © 2017 KhromosTech. All rights reserved.
//

#import "Product.h"

@implementation Product

- (id) initWithProductID:(int)productID productName:(NSString*)productName productPrice:(float)productPrice productMadeInCountry:(NSString*)productMadeInCountry
{
    self = [super init];
    if(self)
    {
        self.ProductID = productID;
        self.productName = productName;
        self.productPrice = productPrice;
        self.productMadeInCountry = productMadeInCountry;
    }
    return self;
}

-(id) initWithProductName:(NSString*)productName
{
    self = [super init];
    if(self)
    {
        self.productName = productName;
    }
    return self;
}

-(float)calculateProductsCost
{
    return self.productPrice;
}
@end
