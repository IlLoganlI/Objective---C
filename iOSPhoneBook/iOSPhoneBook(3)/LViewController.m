//
//  LViewController.m
//  iOSPhoneBook(3)
//
//  Created by Admin on 07.12.16.
//  Copyright © 2016 LoganCorporation. All rights reserved.
//

#import "LViewController.h"

@interface LViewController ()

@end

@implementation LViewController

-(IBAction)goHomeLoginHome:(id)sender {
    AppDelegate *mainDelegate = (AppDelegate *)
    [[UIApplication sharedApplication] delegate];
    [mainDelegate flitToLoginHome];
}

-(IBAction)goToNext:(id)sender {
    
    if ([[infoDictionary objectForKey:login.text]isEqualToString:password.text]) {
        AppDelegate *mainDelegate = (AppDelegate *)
        [[UIApplication sharedApplication] delegate];
        [mainDelegate flipToCreateES];
    
        /*
         UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Пароль вірний" message:nil delegate:self cancelButtonTitle:@"Ок" otherButtonTitles:nil];
         [alert show];
         */
    
    }
    else {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Хибний пароль" message:nil delegate:self cancelButtonTitle:@"Ок" otherButtonTitles:nil];
        [alert show];
    }
    
}

-(void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.view endEditing:YES];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
     infoDictionary = [[NSDictionary alloc] initWithObjects:[NSArray arrayWithObjects:@"Login", @"admin", nil] forKeys: [NSArray arrayWithObjects:@"Password", @"admin", nil]];
    // Do any additional setup after loading the view from its nib.
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

@end
