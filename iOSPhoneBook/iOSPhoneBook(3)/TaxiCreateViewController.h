//
//  TaxiCreateViewController.h
//  iOSPhoneBook(3)
//
//  Created by Admin on 14.12.16.
//  Copyright © 2016 LoganCorporation. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import <CoreData/CoreData.h>

@interface TaxiCreateViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *textFieldName;
@property (weak, nonatomic) IBOutlet UITextField *textFieldNumber;
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;
- (IBAction)addButton:(id)sender;
- (IBAction)backButton:(id)sender;
- (IBAction)lookTable:(id)sender;

@end
