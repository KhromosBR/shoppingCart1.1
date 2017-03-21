//
//  ClothViewController.h
//  shoppingCart
//
//  Created by Khromos on 2017-03-09.
//  Copyright © 2017 KhromosTech. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FoodViewController.h"
#import "Food.h"
#import "Shopping_Cart.h"
#import "Product.h"

@class sendFoodData;
@protocol clothDelegate <NSObject>

-(void)sendClothPrice:(float)clothPrice;

@end

@interface ClothViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITextField *clothID;
@property (weak, nonatomic) IBOutlet UITextField *clothName;
@property (weak, nonatomic) IBOutlet UITextField *clothPrice;
@property (weak, nonatomic) IBOutlet UITextField *clothMadeIn;
@property (weak, nonatomic) IBOutlet UITextField *clothMaterial;
@property (weak, nonatomic) IBOutlet UIButton *sendCloth;
@property (weak, nonatomic) id<clothDelegate> delegate;

- (IBAction)submitClothUIButton:(UIButton *)sender;
- (IBAction)clear:(UIButton *)sender;
- (IBAction)backFromClothToCart:(UIBarButtonItem *)sender;

@end
