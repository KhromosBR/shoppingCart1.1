//
//  FoodViewController.m
//  shoppingCart
//
//  Created by Khromos on 2017-03-08.
//  Copyright © 2017 KhromosTech. All rights reserved.
//

#import "FoodViewController.h"

@interface FoodViewController ()

@end

@implementation FoodViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"Food";

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)sendFoodData:(Food*)food
{
    if([self.delegate respondsToSelector:@selector(sendFoodData:)])
    {
        [self.delegate sendFoodData:food];
    }
}

//Function prepareToSegue
//func preparesegue...
//segueObjet...(foodViewController).delegate segue.destination.... to find the destination to this transition
//

- (IBAction)clearFood:(UIButton *)sender {
    self.foodID.text = @"";
    self.foodName.text = @"";
    self.foodPrice.text = @"";
    self.foodMadeIn.text = @"";
    self.foodCalorie.text = @"";
    self.foodSize.text = @"";
    self.foodIngredients.text = @"";
}

- (IBAction)submitFood:(UIButton *)sender {
    [self.delegate sendFoodPrice:[self.foodPrice.text floatValue]];
    NSLog(@"Food price sent !! %@", self.foodPrice.text);
    //Colsing page
    [self dismissViewControllerAnimated:YES completion:NULL];
    
    //    NSString *ingredients = self.foodIngredients.text;
    //    NSArray<NSString*>* arrayOfIngredients = [ingredients componentsSeparatedByString:@","];
    
    //    Food* chicken = [[Food

}


- (IBAction)backToCart:(UIBarButtonItem *)sender {
    
    [self dismissViewControllerAnimated:YES completion:NULL];
}

@end
