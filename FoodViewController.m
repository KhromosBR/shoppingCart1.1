//
//  FoodViewController.m
//  shoppingCart
//
//  Created by Khromos on 2017-03-08.
//  Copyright © 2017 KhromosTech. All rights reserved.
//

#import "FoodViewController.h"
#import "Food.h"

@interface FoodViewController ()

@end

@implementation FoodViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"Food";
    
    self.foodDelegate.delegate = self;
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)submitFood:(UIButton *)sender
{
    //create the buttons
    
    NSString* foodID = self.foodID.text;
    NSString* foodName = self.foodName.text;
    NSString* foodPrice = self.foodPrice.text;
    NSString* foodMadeIn = self.foodMadeIn.text;
    NSString* foodCalorie = self.foodCalorie.text;
    NSString* foodSize = self.foodSize.text;
    
    //create the array of ingredients and cloth material
    NSMutableArray<NSString*>* foodIngredients = [[NSMutableArray<NSString*> alloc]init];
    
    for (int i = 0; i > foodIngredients.count; i++) {
        [foodIngredients addObject: self.foodIngredients.text];
    }
    //Filling the array of food
    self.foodData = [[NSMutableArray<Food*> alloc] init];
    
    Food* chicken = [[Food alloc] initWithProductID:[foodID intValue] productName:foodName productPrice:[foodPrice floatValue] productMadeInCountry:foodMadeIn foodCalorie:[foodCalorie intValue] foodSize:[foodSize intValue] foodIngredient:foodIngredients];
    
    Food* pasta = [[Food alloc] initWithProductID:[foodID intValue] productName:foodName productPrice:[foodPrice floatValue] productMadeInCountry:foodMadeIn foodCalorie:[foodCalorie intValue] foodSize:[foodSize intValue] foodIngredient:foodIngredients];
    
    [self.foodData addObject:chicken];
    [self.foodData addObject:pasta];
    
    [self.delegate sendFoodData:self.foodData];
    
}

//-(void)sendFoodData:(Food*)food
//{
//    if([self.delegate respondsToSelector:@selector(sendFoodData:)])
//    {
//        
//    }
//}

- (IBAction)clearFood:(UIButton *)sender {
    self.foodID.text = @"";
    self.foodName.text = @"";
    self.foodPrice.text = @"";
    self.foodMadeIn.text = @"";
    self.foodCalorie.text = @"";
    self.foodSize.text = @"";
    self.foodIngredients.text = @"";
}

- (IBAction)backToCart:(UIBarButtonItem *)sender {
    
    [self dismissViewControllerAnimated:YES completion:NULL];
}

@end
