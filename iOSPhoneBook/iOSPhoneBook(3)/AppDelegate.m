//
//  AppDelegate.m
//  iOSPhoneBook(3)
//
//  Created by Admin on 06.12.16.
//  Copyright © 2016 LoganCorporation. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate
@synthesize esVC, mainVC, lVC, allVC, esCreateVC, tableEsVC, taxiCVC, pharmacyCVC, hospiralCVC, restaurantCVC, hotelCVC, crudTable;

@synthesize managedObjectContext = _managedObjectContext;
@synthesize managedObjectModel = _managedObjectModel;
@synthesize persistentStoreCoordinator = _persistentStoreCoordinator;


#pragma mark App Methods
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    return YES;
}

- (void)saveContext
{
    NSError *error = nil;
    NSManagedObjectContext *managedObjectContext = self.managedObjectContext;
    if (managedObjectContext != nil) {
        if ([managedObjectContext hasChanges] && ![managedObjectContext save:&error]) {
            NSLog(@"Unresolved error %@, %@", error, [error userInfo]);
            abort();
        }
    }
}

#pragma mark - Core Data stack
- (NSManagedObjectContext *)managedObjectContext
{
    if (_managedObjectContext != nil) {
        return _managedObjectContext;
    }
    
    NSPersistentStoreCoordinator *coordinator = [self persistentStoreCoordinator];
    if (coordinator != nil) {
        _managedObjectContext = [[NSManagedObjectContext alloc] init];
        [_managedObjectContext setPersistentStoreCoordinator:coordinator];
    }
    return _managedObjectContext;
}


- (NSManagedObjectModel *)managedObjectModel
{
    if (_managedObjectModel != nil) {
        return _managedObjectModel;
    }
    NSURL *modelURL = [[NSBundle mainBundle] URLForResource:@"phonebook.xdatamodeld" withExtension:@"momd"];
    _managedObjectModel = [[NSManagedObjectModel alloc] initWithContentsOfURL:modelURL];
    return _managedObjectModel;
}


- (NSPersistentStoreCoordinator *)persistentStoreCoordinator
{
    if (_persistentStoreCoordinator != nil) {
        return _persistentStoreCoordinator;
    }
    
    NSURL *storeURL = [[self applicationDocumentsDirectory] URLByAppendingPathComponent:@"phonebook.xdatamodeld.sqlite"];
    
    NSError *error = nil;
    _persistentStoreCoordinator = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:[self managedObjectModel]];
    if (![_persistentStoreCoordinator addPersistentStoreWithType:NSSQLiteStoreType configuration:nil URL:storeURL options:nil error:&error]) {
        NSLog(@"Unresolved error %@, %@", error, [error userInfo]);
        abort();
    }
    
    return _persistentStoreCoordinator;
}

#pragma mark - Application's Documents directory

// Returns the URL to the application's Documents directory.
- (NSURL *)applicationDocumentsDirectory
{
    return [[[NSFileManager defaultManager] URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask] lastObject];
}


#pragma mark - GoToEmergencyServiceTable on ESCreateVC
-(void)flipToEsTable {
    TableEsViewController *createTable = [[TableEsViewController alloc]
        initWithNibName:@"TableEsViewController" bundle:nil];
    self.tableEsVC = createTable;
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1.0];
    [UIView setAnimationTransition:
     UIViewAnimationTransitionFlipFromLeft forView:_window
                             cache:YES];
    [esCreateVC.view removeFromSuperview];
    [self.window addSubview:tableEsVC.view];
    [UIView commitAnimations];
}

-(void)flitToAllGroupOfTable {
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1.0];
    [UIView setAnimationTransition:
     UIViewAnimationTransitionFlipFromLeft forView:_window
                             cache:YES];
    [crudTable.view removeFromSuperview];
    [self.window addSubview:allVC.view];
    [UIView commitAnimations];
    esCreateVC = nil;
}

-(void)flitToAddTableCrud {
    TableCRUDViewController *crudcreate = [[TableCRUDViewController alloc]
                                        initWithNibName:@"TableCRUDViewController" bundle:nil];
    self.crudTable = crudcreate;
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1.0];
    [UIView setAnimationTransition:
     UIViewAnimationTransitionFlipFromLeft forView:_window
                             cache:YES];
    [esCreateVC.view removeFromSuperview];
    [self.window addSubview:crudTable.view];
    [UIView commitAnimations];
}

-(void)flitToAddTableHotel {
    HotelViewController *hotelcreate = [[HotelViewController alloc]
                                                  initWithNibName:@"HotelViewController" bundle:nil];
    self.hotelCVC = hotelcreate;
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1.0];
    [UIView setAnimationTransition:
     UIViewAnimationTransitionFlipFromLeft forView:_window
                             cache:YES];
    [allVC.view removeFromSuperview];
    [self.window addSubview:hotelCVC.view];
    [UIView commitAnimations];
}

-(void)flitToAddTableRestaurant {
    RestaurantViewController *restaurantcreate = [[RestaurantViewController alloc]
                                              initWithNibName:@"RestaurantViewController" bundle:nil];
    self.restaurantCVC = restaurantcreate;
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1.0];
    [UIView setAnimationTransition:
     UIViewAnimationTransitionFlipFromLeft forView:_window
                             cache:YES];
    [allVC.view removeFromSuperview];
    [self.window addSubview:restaurantCVC.view];
    [UIView commitAnimations];
}

-(void)flitToAddTableHospital {
    HospitalViewController *hospitalcreate = [[HospitalViewController alloc]
                                              initWithNibName:@"HospitalViewController" bundle:nil];
    self.hospiralCVC = hospitalcreate;
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1.0];
    [UIView setAnimationTransition:
     UIViewAnimationTransitionFlipFromLeft forView:_window
                             cache:YES];
    [allVC.view removeFromSuperview];
    [self.window addSubview:hospiralCVC.view];
    [UIView commitAnimations];
}

-(void)flitToAddTablePharmacy {
    PharmacyViewController *pharmacycreate = [[PharmacyViewController alloc]
                                            initWithNibName:@"PharmacyViewController" bundle:nil];
    self.pharmacyCVC = pharmacycreate;
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1.0];
    [UIView setAnimationTransition:
     UIViewAnimationTransitionFlipFromLeft forView:_window
                             cache:YES];
    [allVC.view removeFromSuperview];
    [self.window addSubview:pharmacyCVC.view];
    [UIView commitAnimations];
}

-(void)flitToAddTableTaxi{
    TaxiCreateViewController *taxicreate = [[TaxiCreateViewController alloc]
                                                    initWithNibName:@"TaxiCreateViewController" bundle:nil];
    self.taxiCVC = taxicreate;
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1.0];
    [UIView setAnimationTransition:
     UIViewAnimationTransitionFlipFromLeft forView:_window
                             cache:YES];
    [allVC.view removeFromSuperview];
    [self.window addSubview:taxiCVC.view];
    [UIView commitAnimations];
}

#pragma mark GoToAddEsTable
-(void)flitToAddTableES {
    ESCreateViewController *esCreateViewContoller = [[ESCreateViewController alloc]
        initWithNibName:@"ESCreateViewController" bundle:nil];
    self.esCreateVC = esCreateViewContoller;
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1.0];
    [UIView setAnimationTransition:
     UIViewAnimationTransitionFlipFromLeft forView:_window
                             cache:YES];
    [allVC.view removeFromSuperview];
    [self.window addSubview:esCreateVC.view];
    [UIView commitAnimations];
}

#pragma mark GoToAllGroup_EsAddTable
-(void)flitToAllGroup {
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1.0];
    [UIView setAnimationTransition:
     UIViewAnimationTransitionFlipFromLeft forView:_window
                             cache:YES];
    [esCreateVC.view removeFromSuperview];
    [self.window addSubview:allVC.view];
    [UIView commitAnimations];
    esCreateVC = nil;
}

#pragma mark GoToAllGroup
-(void)flipToCreateES {
    AllGroupViewController *allViewController = [[AllGroupViewController alloc] initWithNibName:@"AllGroupViewController" bundle:nil];
    self.allVC = allViewController;
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1.0];
    [UIView setAnimationTransition:
     UIViewAnimationTransitionFlipFromLeft forView:_window
                             cache:YES];
    [lVC.view removeFromSuperview];
    [self.window addSubview:allVC.view];
    [UIView commitAnimations];
    
}

#pragma mark GoToLoginForm
-(void)flitToLoginForm {
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1.0];
    [UIView setAnimationTransition:
     UIViewAnimationTransitionFlipFromLeft forView:_window
                             cache:YES];
    [allVC.view removeFromSuperview];
    [self.window addSubview:lVC.view];
    [UIView commitAnimations];
    allVC = nil;
}

#pragma mark LoginMethods
-(void)flipToLogin {
    LViewController *lvc = [[LViewController alloc] initWithNibName:@"LViewController" bundle:nil];
    self.lVC = lvc;
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1.0];
    [UIView setAnimationTransition:
     UIViewAnimationTransitionFlipFromLeft forView:_window
                             cache:YES];
    [mainVC.view removeFromSuperview];
    [self.window addSubview:lVC.view];
    [UIView commitAnimations];
    
}

#pragma mark LoginHomeMethods
-(void)flitToLoginHome {
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1.0];
    [UIView setAnimationTransition:
     UIViewAnimationTransitionFlipFromRight forView:_window
                             cache:NO];
    [lVC.view removeFromSuperview];
    [self.window addSubview:mainVC.view];
    [UIView commitAnimations];
    lVC = nil;
}

#pragma mark ESMethods
-(void)flipToEmergencyService {
    
    ESViewController *esvc = [[ESViewController alloc] initWithNibName:@"ESViewController" bundle:nil];
    self.esVC = esvc;
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1.0];
    [UIView setAnimationTransition:
        UIViewAnimationTransitionFlipFromLeft forView:_window
                             cache:YES];
    [mainVC.view removeFromSuperview];
    [self.window addSubview:esVC.view];
    [UIView commitAnimations];
    
}

#pragma mark ESHomeMethods
-(void)flitToEmergencyServiceHome {
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1.0];
    [UIView setAnimationTransition:
        UIViewAnimationTransitionFlipFromRight forView:_window
                             cache:NO];
    [esVC.view removeFromSuperview];
    [self.window addSubview:mainVC.view];
    [UIView commitAnimations];
    esVC = nil;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
