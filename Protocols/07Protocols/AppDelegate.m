//
//  AppDelegate.m
//  07Protocols
//
//  Created by Admin on 26.07.16.
//  Copyright © 2016 Logan. All rights reserved.
//

#import "AppDelegate.h"
#import "Stydent.h"
#import "Dancer.h"
#import "Developer.h"
#import "ASList.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    Stydent *Jon = [[Stydent alloc] init];
    Stydent *Mike = [[Stydent alloc] init];
    Dancer *Robin = [[Dancer alloc] init];
    Developer *Logan = [[Developer alloc] init];
    
    Jon.name = @"Jon";
    Mike.name = @"Mike";
    Robin.name = @"Robin";
    Logan.name = @"Logan";
    
    NSArray *PATIEN13 = [[NSArray alloc] initWithObjects: Jon, Mike, Robin, Logan, nil];
    
    for (id <ASList> patient in PATIEN13) {
        if ([(id)patient conformsToProtocol:@protocol(ASList)]){
            
            NSLog(@"Patient name is = %@", patient.name);
            
            if ([(id)patient respondsToSelector:@selector(howIsYourFamily)]) {
                NSLog(@"How is your family - \n%@", [patient howIsYourFamily]);
            }
            if ([(id)patient respondsToSelector:@selector(howIsYouJob)]) {
                NSLog(@"How is your job - \n%@", [patient howIsYouJob]);
            }
        
            
            if (![patient areYouOk]) {
                
                [patient takePill];
                
                if (![patient areYouOk]) {
                [patient makeShot];
                }
            }
            
        } else {
            NSLog(@"FAKE!");
        }
    }
    /*
    for (int i = 0; i < [PATIENT13 count]; i++) {
     id <ASList> patient = [PATIENT13 abjextAtIndex:i];
     }
    */
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
