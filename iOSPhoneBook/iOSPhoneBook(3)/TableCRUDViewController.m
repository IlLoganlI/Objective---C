//
//  TableCRUDViewController.m
//  iOSPhoneBook(3)
//
//  Created by Admin on 14.12.16.
//  Copyright © 2016 LoganCorporation. All rights reserved.
//

#import "TableCRUDViewController.h"

@interface TableCRUDViewController ()

@end

@implementation TableCRUDViewController

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

- (IBAction)backButton:(id)sender {
    AppDelegate *mainDelegate = (AppDelegate *)
    [[UIApplication sharedApplication] delegate];
    [mainDelegate flitToAllGroupOfTable];
}
@end
