//
//  DrinkViewController.h
//  shoppingCart
//
//  Created by Khromos on 2017-03-08.
//  Copyright © 2017 KhromosTech. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FoodViewController.h"
#import "Food.h"
#import "Shopping_Cart.h"
#import "Product.h"

@class sendDrinkData;
@protocol drinkDelegate <NSObject>

@required
-(void)sendDrinkPrice:(float)drinkPrice;

@end

@interface DrinkViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITextField *drinkID;
@property (weak, nonatomic) IBOutlet UITextField *drinkName;
@property (weak, nonatomic) IBOutlet UITextField *drinkPrice;
@property (weak, nonatomic) IBOutlet UITextField *drinkMadeIn;
@property (weak, nonatomic) IBOutlet UITextField *drinkIsDiet;
@property (weak, nonatomic) IBOutlet UITextField *drinkSize;
@property (weak, nonatomic) IBOutlet UIButton *sendDrink;
@property (weak, nonatomic) id<drinkDelegate> delegate;

- (IBAction)submitDrink:(UIButton *)sender;

- (IBAction)clearDrink:(UIButton *)sender;

- (IBAction)backToCart:(UIBarButtonItem *)sender;
@end
