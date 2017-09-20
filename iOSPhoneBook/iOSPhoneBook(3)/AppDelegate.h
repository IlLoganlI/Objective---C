//
//  AppDelegate.h
//  iOSPhoneBook(3)
//
//  Created by Admin on 06.12.16.
//  Copyright © 2016 LoganCorporation. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"
#import "ESViewController.h"
#import "LViewController.h"
#import "AllGroupViewController.h"
#import "ESCreateViewController.h"
#import "TableEsViewController.h"
#import "TaxiCreateViewController.h"
#import "PharmacyViewController.h"
#import "HospitalViewController.h"
#import "RestaurantViewController.h"
#import "HotelViewController.h"
#import "TableCRUDViewController.h"



@interface AppDelegate : UIResponder <UIApplicationDelegate>

{
    UIViewController *mainVC;
    UIViewController *esVC;
    UIViewController *lVC;
    UIViewController *allVC;
    UIViewController *esCreateVC;
    UITableViewController *tableEsVC;
    UIViewController *taxiCVC;
    UIViewController *pharmacyCVC;
    UIViewController *hospiralCVC;
    UIViewController *restaurantCVC;
    UIViewController *hotelCVC;
    UIViewController *crudTable;
    
   
}

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;


@property (strong, nonatomic) UIViewController *mainVC;
@property (strong, nonatomic) UIViewController *esVC;
@property (strong, nonatomic) UIViewController *lVC;
@property (strong, nonatomic) UIViewController *allVC;
@property (strong, nonatomic) UIViewController *esCreateVC;
@property (strong, nonatomic) UITableViewController *tableEsVC;
@property (strong, nonatomic) UIViewController *taxiCVC;
@property (strong, nonatomic) UIViewController *pharmacyCVC;
@property (strong, nonatomic) UIViewController *hospiralCVC;
@property (strong, nonatomic) UIViewController *restaurantCVC;
@property (strong, nonatomic) UIViewController *hotelCVC;
@property (strong, nonatomic) UIViewController *crudTable;



- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

-(void)flipToEmergencyService;
-(void)flitToEmergencyServiceHome;
-(void)flipToLogin;
-(void)flitToLoginHome;
-(void)flipToCreateES;
-(void)flitToLoginForm;

-(void)flitToAddTableES;
-(void)flitToAddTableTaxi;
-(void)flitToAddTablePharmacy;
-(void)flitToAddTableHospital;
-(void)flitToAddTableRestaurant;
-(void)flitToAddTableHotel;

-(void)flitToAllGroup;

-(void)flipToEsTable;
-(void)flitToAddTableCrud;
-(void)flitToAllGroupOfTable;


@end

