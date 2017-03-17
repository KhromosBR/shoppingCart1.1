//
//  Product.h
//  final_term
//
//  Created by Khromos on 2017-03-06.
//  Copyright © 2017 KhromosTech. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Product : NSObject

//Property
@property int ProductID;
@property (strong, nonatomic)NSString* productName;
@property float productPrice;
@property (strong, nonatomic)NSString* productMadeInCountry;

//Contructor
-(id) initWithProductID:(int)productID productName:(NSString*)productName productPrice:
(float)productPrice productMadeInCountry:(NSString*)productMadeInCountry;

-(id) initWithProductName:(NSString*)productName;
-(float)calculateProductsCost;



@end
