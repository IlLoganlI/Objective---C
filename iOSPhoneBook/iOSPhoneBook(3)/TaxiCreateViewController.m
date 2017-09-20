//
//  TaxiCreateViewController.m
//  iOSPhoneBook(3)
//
//  Created by Admin on 14.12.16.
//  Copyright © 2016 LoganCorporation. All rights reserved.
//

#import "TaxiCreateViewController.h"

@interface TaxiCreateViewController ()

@end

@implementation TaxiCreateViewController

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
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(NSManagedObjectContext *)managedObjectContext{
    NSManagedObjectContext *context = nil;
    id delegate = [[UIApplication sharedApplication] delegate];
    if ([delegate performSelector:@selector(managedObjectContext)]){
        context = [delegate managedObjectContext];
    }
    return context;
}


- (IBAction)addButton:(id)sender {
    NSManagedObjectContext *context = [self managedObjectContext];
    
    NSManagedObject *newDevice = [NSEntityDescription insertNewObjectForEntityForName:@"ES" inManagedObjectContext:context];
    [newDevice setValue:self.textFieldName.text forKey:@"nES"];
    [newDevice setValue:self.textFieldNumber.text forKey:@"pnES"];
    
    
    NSError *error = nil;
    if(![context save:&error]){
        NSLog(@"Can't save! %@ %@", error, [error localizedDescription]);
    }
    else {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Ура!" message:@"Успешно добавлено!" delegate:self cancelButtonTitle:@"ok" otherButtonTitles: nil];
        [alert show];
    }
}


- (IBAction)backButton:(id)sender {
    AppDelegate *mainDelegate = (AppDelegate *)
    [[UIApplication sharedApplication] delegate];
    [mainDelegate flitToAllGroup];
}

- (IBAction)lookTable:(id)sender {
    AppDelegate *mainDelegate = (AppDelegate *)
    [[UIApplication sharedApplication] delegate];
    [mainDelegate flitToAddTableCrud];
}
@end
