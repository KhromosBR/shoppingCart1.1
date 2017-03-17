//
//  ViewController.h
//  shoppingCart
//
//  Created by Khromos on 2017-03-07.
//  Copyright © 2017 KhromosTech. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Food.h"
#import "Drink.h"
#import "Cloth.h"
#import "FoodViewController.h"
#import "DrinkViewController.h"
#import "ClothViewController.h"


@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *productPricesViewControler;
@property (copy, nonatomic) NSMutableArray *listOfProducts;


@end

