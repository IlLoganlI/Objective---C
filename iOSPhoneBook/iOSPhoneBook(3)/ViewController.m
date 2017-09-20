//
//  ViewController.m
//  iOSPhoneBook(3)
//
//  Created by Admin on 06.12.16.
//  Copyright © 2016 LoganCorporation. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController





-(IBAction)flipToLogin:(id)sender {
    AppDelegate *mainDelegate = (AppDelegate *)
    [[UIApplication sharedApplication] delegate];
    [mainDelegate flipToLogin];
}

-(IBAction)goToEmergencyService:(id)sender {
    AppDelegate *mainDelegate = (AppDelegate *)
        [[UIApplication sharedApplication] delegate];
    [mainDelegate flipToEmergencyService];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
