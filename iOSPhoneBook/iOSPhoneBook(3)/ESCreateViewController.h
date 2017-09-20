//
//  ESCreateViewController.h
//  iOSPhoneBook(3)
//
//  Created by Admin on 07.12.16.
//  Copyright © 2016 LoganCorporation. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>
#import "AppDelegate.h"

@interface ESCreateViewController : UIViewController <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *esNameOrganization;
@property (weak, nonatomic) IBOutlet UITextField *esPhoneNumberOrganization;
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;


- (IBAction)addEsOrganization:(id)sender;
- (IBAction)lookEsTable:(id)sender;

@end
