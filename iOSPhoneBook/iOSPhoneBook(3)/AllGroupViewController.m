//
//  AllGroupViewController.m
//  iOSPhoneBook(3)
//
//  Created by Admin on 07.12.16.
//  Copyright © 2016 LoganCorporation. All rights reserved.
//

#import "AllGroupViewController.h"

@interface AllGroupViewController ()

@end

@implementation AllGroupViewController


-(IBAction)goToAddEsTable:(id)sender {
    AppDelegate *mainDelegate = (AppDelegate *)
    [[UIApplication sharedApplication] delegate];
    [mainDelegate flitToAddTableES];
}

- (IBAction)goToAddTaxiTable:(id)sender {
    AppDelegate *mainDelegate = (AppDelegate *)
    [[UIApplication sharedApplication] delegate];
    [mainDelegate flitToAddTableTaxi];
}

- (IBAction)goToAddPharmacyTable:(id)sender {
    AppDelegate *mainDelegate = (AppDelegate *)
    [[UIApplication sharedApplication] delegate];
    [mainDelegate flitToAddTablePharmacy];
}

- (IBAction)goToAddHospitalTable:(id)sender {
    AppDelegate *mainDelegate = (AppDelegate *)
    [[UIApplication sharedApplication] delegate];
    [mainDelegate flitToAddTableHospital];
}

- (IBAction)goToAddRestaurantTable:(id)sender {
    AppDelegate *mainDelegate = (AppDelegate *)
    [[UIApplication sharedApplication] delegate];
    [mainDelegate flitToAddTableRestaurant];
}

- (IBAction)goToAddHotelTable:(id)sender {
    AppDelegate *mainDelegate = (AppDelegate *)
    [[UIApplication sharedApplication] delegate];
    [mainDelegate flitToAddTableHotel];
}

-(IBAction)goBackToLoginForm:(id)sender {
    AppDelegate *mainDelegate = (AppDelegate *)
    [[UIApplication sharedApplication] delegate];
    [mainDelegate flitToLoginForm];
}

- (void)viewDidLoad {
    [super viewDidLoad];
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
