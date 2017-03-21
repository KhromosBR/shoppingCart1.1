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
#import "ListOfProducts.h"
#import "MainTableViewCell.h"
#import "Food.h"
#import "Drink.h"
#import "Cloth.h"
#import "Product.h"

@interface ViewController ()  {
    
    NSMutableArray *listOfProducts;
}

@property (strong, nonatomic) FoodViewController *foodPrice;
@property (strong, nonatomic) DrinkViewController *drinkPrice;
@property (strong, nonatomic) NSMutableArray<Product*> *product;
@property float totalPrice;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //Title of embeded title
    self.title = @"Shopping Cart";
    self.totalPrice = 0;
    
//    self.arrayOfProduct = [[NSMutableArray alloc]init];
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

-(void)sendFoodData:(Food *)foodData
{
   
}

//TableView Rows
//- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
//{
//
//
//}
//- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
//{
//
//}

// identifiers of cells. 

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString* cellIdentifier;
    switch(indexPath.row){
        case 0:
            cellIdentifier = @"foodCell";
            break;
        case 1:
            cellIdentifier = @"drinkCell";
            break;
        case 2:
            cellIdentifier = @"clothCell";
            break;
    }
    MainTableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if ( !cell ) {
        cell = [MainTableViewCell new];
    }
    return cell;
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
    }else if([[segue identifier] isEqualToString:@"ListOfProductsViewController"]){
        ListOfProducts* listView = segue.destinationViewController;
        NSMutableArray<FoodViewController*>* foodDataArray = [[NSMutableArray<FoodViewController*> alloc]init];
        for (int i = 0; i < ; i++) {
            [foodDataArray addObject:[self.foodData objectAtIndex: i].sendFoodData];
        }
        
        foodDataArray.self.foodData = foodDataArray;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)listOfProductsButtom:(UIButton *)sender {
}

- (IBAction)listOfProducts:(UIBarButtonItem *)sender {
}
@end
