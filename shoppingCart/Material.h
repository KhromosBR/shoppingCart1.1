//
//  Material.h
//  final_term
//
//  Created by Khromos on 2017-03-06.
//  Copyright © 2017 KhromosTech. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Product.h"

@interface Material : Product
//property
@property int materialCode;

//Contructor
-(id)initWithProductName:(NSString *)productName materialCode:(int)materialCode;


@end
