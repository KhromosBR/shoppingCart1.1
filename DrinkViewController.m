//
//  DrinkViewController.m
//  shoppingCart
//
//  Created by Khromos on 2017-03-08.
//  Copyright © 2017 KhromosTech. All rights reserved.
//

#import "DrinkViewController.h"

@interface DrinkViewController ()

@end

@implementation DrinkViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"Drink";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)submitDrink:(UIButton *)sender {
    
    [self.delegate sendDrinkPrice:[self.drinkPrice.text floatValue]];
    NSLog(@"Drink price sent %@", self.drinkPrice.text);
    //Colsing page
    [self dismissViewControllerAnimated:YES completion:NULL];
    
}

- (IBAction)clearDrink:(UIButton *)sender {
    self.drinkName.text = @"";
    self.drinkID.text = @"";
    self.drinkPrice.text = @"";
    self.drinkSize.text = @"";
    self.drinkMadeIn.text = @"";
    self.drinkIsDiet.text = @"";
}

- (IBAction)backToCart:(UIBarButtonItem *)sender {
    [self dismissViewControllerAnimated:YES completion:NULL];
}
@end
