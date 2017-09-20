//
//  ViewController.h
//  IdentificationMethod
//
//  Created by Admin on 07.06.17.
//  Copyright © 2017 LoganCorporation. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *textFieldTelecom;
@property (weak, nonatomic) IBOutlet UITextField *textFieldCountry;
@property (weak, nonatomic) IBOutlet UITextField *textFieldSim;

@property (weak, nonatomic) IBOutlet UILabel *labelTelecomText;
@property (weak, nonatomic) IBOutlet UILabel *labelCountryText;
@property (weak, nonatomic) IBOutlet UILabel *labelSimText;

- (IBAction)checkTelecomCode:(id)sender;
- (IBAction)checkCoutryCode:(id)sender;
- (IBAction)checkSimCode:(id)sender;
- (IBAction)identificationButton:(id)sender;

@end

