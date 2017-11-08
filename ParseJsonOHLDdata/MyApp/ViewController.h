//
//  ViewController.h
//  MyApp
//
//  Created by Admin on 04.05.17.
//  Copyright © 2017 LoganCorporation. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <NSURLSessionDataDelegate, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITextField *textField;

- (IBAction)startButtom:(id)sender;

@property (weak, nonatomic) IBOutlet UILabel *myLabelTextError;

//@property (weak, nonatomic) IBOutlet UITableView *myTableViewForJson;

@end

