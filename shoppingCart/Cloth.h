//
//  Cloth.h
//  final_term
//
//  Created by Khromos on 2017-03-06.
//  Copyright © 2017 KhromosTech. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Product.h"
#import "Material.h"

@interface Cloth : Product

//property
@property (strong, nonatomic)NSArray<Material*>* clothMaterial;

//Contructor
-(id)initWithProductID:(int)productID productName:(NSString *)productName productPrice:(float)productPrice productMadeInCountry:(NSString *)productMadeInCountry clothMaterial:(NSArray<Material*>*)clothMaterial;

@end
