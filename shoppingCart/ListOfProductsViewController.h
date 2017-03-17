//
//  ListOfProductsViewController.h
//  shoppingCart
//
//  Created by Khromos on 2017-03-08.
//  Copyright © 2017 KhromosTech. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FoodViewController.h"

@interface ListOfProductsViewController : UIViewController<UITableViewDataSource, UITableViewDelegate>

@property (copy, nonatomic) NSMutableArray<FoodViewController*>* listOfFood;


@end
