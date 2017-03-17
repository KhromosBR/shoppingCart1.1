//
//  ClothViewController.m
//  shoppingCart
//
//  Created by Khromos on 2017-03-09.
//  Copyright © 2017 KhromosTech. All rights reserved.
//

#import "ClothViewController.h"

@interface ClothViewController ()

@end

@implementation ClothViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"Cloth";
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

- (IBAction)submitClothUIButton:(UIButton *)sender {
    
    [self.delegate sendClothPrice:[self.clothPrice.text floatValue]];
    NSLog(@"Cloth price sent %@", self.clothPrice.text);
    //Closing page
    [self dismissViewControllerAnimated:YES completion:NULL];
}

- (IBAction)clear:(UIButton *)sender {
    self.clothID.text = @"";
    self.clothName.text = @"";
    self.clothPrice.text = @"";
    self.clothMadeIn.text = @"";
    self.clothMaterial.text = @"";
}

- (IBAction)backFromClothToCart:(UIBarButtonItem *)sender {
    [self dismissViewControllerAnimated:YES completion:NULL];
}
@end
