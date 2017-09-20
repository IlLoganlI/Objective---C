//
//  ESCreateViewController.m
//  iOSPhoneBook(3)
//
//  Created by Admin on 07.12.16.
//  Copyright © 2016 LoganCorporation. All rights reserved.
//

#import "ESCreateViewController.h"
#import "AppDelegate.h"

@interface ESCreateViewController ()
/*{
    NSManagedObjectContext *context;
}*/

@end

@implementation ESCreateViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    //[[self esNameOrganization] setDelegate:self];
   // [[self esPhoneNumberOrganization] setDelegate:self];
    
    //AppDelegate *appdelegate = [[UIApplication sharedApplication] delegate];
    //context = [appdelegate manageObjectContext];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)goBackToAllGroupForm:(id)sender {
    AppDelegate *mainDelegate = (AppDelegate *)
    [[UIApplication sharedApplication] delegate];
    [mainDelegate flitToAllGroup];
}



-(NSManagedObjectContext *)managedObjectContext{
    NSManagedObjectContext *context = nil;
    id delegate = [[UIApplication sharedApplication] delegate];
    if ([delegate performSelector:@selector(managedObjectContext)]){
        context = [delegate managedObjectContext];
    }
    return context;
}

- (IBAction)addEsOrganization:(id)sender {
    
    /*NSEntityDescription *entitydesc = [NSEntityDescription entityForName:@"ES" inManagedObjectContext:context];
    NSManagedObject *newDevice = [[NSManagedObject alloc] initWithEntity:entitydesc insertIntoManagedObjectContext:context];
    [newDevice setValue:self.esNameOrganization.text forKey:@"nES"];
    [newDevice setValue:self.esPhoneNumberOrganization.text forKey:@"pnES"];*/
    
    
    NSManagedObjectContext *context = [self managedObjectContext];
    
    NSManagedObject *newDevice = [NSEntityDescription insertNewObjectForEntityForName:@"ES" inManagedObjectContext:context];
    [newDevice setValue:self.esNameOrganization.text forKey:@"nES"];
    [newDevice setValue:self.esPhoneNumberOrganization.text forKey:@"pnES"];
    
    
    NSError *error = nil;
    if(![context save:&error]){
        NSLog(@"Can't save! %@ %@", error, [error localizedDescription]);
    }
    else {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Ура!" message:@"Успешно добавлено!" delegate:self cancelButtonTitle:@"ok" otherButtonTitles: nil];
        [alert show];
    }
}

- (IBAction)lookEsTable:(id)sender {
    AppDelegate *mainDelegate = (AppDelegate *)
    [[UIApplication sharedApplication] delegate];
    [mainDelegate flitToAddTableCrud];

}

@end
