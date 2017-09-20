//
//  LViewController.h
//  iOSPhoneBook(3)
//
//  Created by Admin on 07.12.16.
//  Copyright © 2016 LoganCorporation. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

@interface LViewController : UIViewController {
    
    IBOutlet UITextField *login;
    IBOutlet UITextField *password;
    NSDictionary *infoDictionary;
    
}



-(IBAction)goHomeLoginHome:(id)sender ;
-(IBAction)goToNext:(id)sender;

@end
