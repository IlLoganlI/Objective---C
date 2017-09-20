//
//  HotelViewController.h
//  iOSPhoneBook(3)
//
//  Created by Admin on 14.12.16.
//  Copyright © 2016 LoganCorporation. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import <CoreData/CoreData.h>

@interface HotelViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *textFieldName;
@property (weak, nonatomic) IBOutlet UITextField *textFieldNumber;
@property (weak, nonatomic) IBOutlet UITextField *textFieldAddress;
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;
- (IBAction)backButton:(id)sender;
- (IBAction)addButton:(id)sender;
- (IBAction)lookTable:(id)sender;

@end
