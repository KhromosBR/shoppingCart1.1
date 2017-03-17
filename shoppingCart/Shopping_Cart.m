//
//  Shoppint_Cart.m
//  final_term
//
//  Created by Khromos on 2017-03-06.
//  Copyright © 2017 KhromosTech. All rights reserved.
//

#import "Shopping_Cart.h"


@implementation Shopping_Cart

-(id)initWithItems:(NSMutableArray<Product*>*)items totalPrice:(NSMutableArray<Product*>*) totalPrice
{
    self = [super init];
    if(self)
    {
        self.items = items;
        self.totalPrice = totalPrice;
        
    }
    return self;
}

-(void)addItem:(Product*) product
{
    NSLog(@"%@ is added to your shopping cart!", product.productName);
    [self.items addObject:product];
}

-(void)printProductName
{
    NSLog(@"\n===================\n");
    for(int i = 0; i < self.items.count;i++)
    {
        Product* productName = [self.items objectAtIndex:i];
            NSLog(@"Product Name: %@\n", productName.productName);
    }
    NSLog(@"\n===================\n");
}
@end
