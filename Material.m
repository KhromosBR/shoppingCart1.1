//
//  Material.m
//  final_term
//
//  Created by Khromos on 2017-03-06.
//  Copyright © 2017 KhromosTech. All rights reserved.
//

#import "Material.h"

@implementation Material

-(id)initWithProductName:(NSString *)productName materialCode:(int)materialCode
{
    self = [super initWithProductName:productName];
    if(self)
    {
        self.materialCode = materialCode;
    }
    return self;
}

@end
