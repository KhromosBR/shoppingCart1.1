//
//  TableViewCellController.h
//  shoppingCart
//
//  Created by Khromos on 2017-03-15.
//  Copyright © 2017 KhromosTech. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Food.h"
#import "Drink.h"
#import "Cloth.h"
#import "FoodViewController.h"
#import "DrinkViewController.h"
#import "ClothViewController.h"

@interface TableViewCellController : UITableViewCell <foodDelegate, drinkDelegate, clothDelegate, UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UILabel *productPricesViewControler;
@property (copy, nonatomic) NSMutableArray *listOfProducts;

- (IBAction)listOfProductsButtom:(UIButton *)sender;


@end
