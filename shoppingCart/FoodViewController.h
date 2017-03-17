//
//  FoodViewController.h
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

@class sendFoodDate;
@protocol foodDelegate <NSObject>

@required
-(void)sendFoodPrice:(float)foodPrice;
-(void)sendFoodData:(Food*)foodData;

@end

@interface FoodViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *foodID;
@property (weak, nonatomic) IBOutlet UITextField *foodName;
@property (weak, nonatomic) IBOutlet UITextField *foodPrice;
@property (weak, nonatomic) IBOutlet UITextField *foodMadeIn;
@property (weak, nonatomic) IBOutlet UITextField *foodCalorie;
@property (weak, nonatomic) IBOutlet UITextField *foodSize;
@property (weak, nonatomic) IBOutlet UITextField *foodIngredients;

- (IBAction)clearFood:(UIButton *)sender;
- (IBAction)clearFood:(UIButton *)sender;
- (IBAction)sendFood:(UIButton *)sender;
- (IBAction)clearFood:(UIButton *)sender;
@property (weak, nonatomic) id<foodDelegate> delegate;

@property (weak, nonatomic) IBOutlet UIButton *cleanFoodField;

@property (weak, nonatomic) IBOutlet UIButton *sendFood;


@end


