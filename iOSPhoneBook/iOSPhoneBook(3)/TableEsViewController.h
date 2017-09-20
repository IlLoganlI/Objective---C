//
//  TableEsViewController.h
//  iOSPhoneBook(3)
//
//  Created by Admin on 13.12.16.
//  Copyright © 2016 LoganCorporation. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>
#import "AppDelegate.h"

@interface TableEsViewController : UIViewController

@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView;
- (void)viewDidAppear:(BOOL)animated;
-(NSManagedObjectContext *)managedObjectContext;
@end
