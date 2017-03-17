//
//  ViewController.m
//  shoppingCart
//
//  Created by Khromos on 2017-03-07.
//  Copyright © 2017 KhromosTech. All rights reserved.
//

#import "ViewController.h"
#import "FoodViewController.h"
#import "DrinkViewController.h"
#import "ClothViewController.h"
#import "Food.h"
#import "Drink.h"
#import "Cloth.h"
#import "Product.h"

@interface ViewController () <foodDelegate, drinkDelegate, clothDelegate, UITableViewDataSource, UITableViewDelegate> {
    
    NSMutableArray *listOfProducts;
}

@property (strong, nonatomic) FoodViewController *foodPrice;
@property (strong, nonatomic) DrinkViewController *drinkPrice;
@property (strong, nonatomic) NSMutableArray<Product*>* arrayOfProduct;
@property float totalPrice;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //Title of embeded title
    self.title = @"Shopping Cart";
    self.totalPrice = 0;
    
    self.arrayOfProduct = [[NSMutableArray alloc]init];
    //
    //    self.foodPrice = [[FoodViewController alloc]init];
    //    self.foodPrice.delegate = self;
    //
    //    self.drinkPrice = [[DrinkViewController alloc]init];
    //    self.drinkPrice.delegate = self;
    //
    
}

-(void)sendFoodPrice:(float)foodPrice
{
    self.totalPrice += foodPrice;
    self.productPricesViewControler.text = [NSString stringWithFormat:@"%f", self.totalPrice];
}

-(void)sendDrinkPrice:(float)drinkPrice
{
    self.totalPrice += drinkPrice;
    self.productPricesViewControler.text = [NSString stringWithFormat:@"%f", self.totalPrice];
}

-(void)sendClothPrice:(float)clothPrice
{
    self.totalPrice += clothPrice;
    self.productPricesViewControler.text = [NSString stringWithFormat:@"%f", self.totalPrice];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([[segue identifier] isEqualToString:@"FoodViewController"]){
        FoodViewController* foodView = segue.destinationViewController;
        foodView.delegate = self;
    }else if([[segue identifier] isEqualToString:@"DrinkViewController"]){
        DrinkViewController* drinkView = segue.destinationViewController;
        drinkView.delegate = self;
    }else if([[segue identifier] isEqualToString:@"ClothViewController"]){
        ClothViewController* clothView = segue.destinationViewController;
        clothView.delegate = self;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)listOfProductsButtom:(UIButton *)sender {
}

@end
