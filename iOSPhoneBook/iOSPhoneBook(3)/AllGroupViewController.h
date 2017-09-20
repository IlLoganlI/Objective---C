//
//  AllGroupViewController.h
//  iOSPhoneBook(3)
//
//  Created by Admin on 07.12.16.
//  Copyright © 2016 LoganCorporation. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

@interface AllGroupViewController : UIViewController

-(IBAction)goBackToLoginForm:(id)sender;
-(IBAction)goToAddEsTable:(id)sender;
- (IBAction)goToAddTaxiTable:(id)sender;
- (IBAction)goToAddPharmacyTable:(id)sender;
- (IBAction)goToAddHospitalTable:(id)sender;
- (IBAction)goToAddRestaurantTable:(id)sender;
- (IBAction)goToAddHotelTable:(id)sender;



@end
