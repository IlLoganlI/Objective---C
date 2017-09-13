//
//  AppDelegate.m
//  ArrayTest
//
//  Created by Admin on 15.07.16.
//  Copyright © 2016 Logan. All rights reserved.
//

#import "AppDelegate.h"
#import "ASObject.h"
#import "Test.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.

    ASObject *obj = [[ASObject alloc] init];
    ASObject *obj1 = [[ASObject alloc] init];
    Test *obj2 = [[Test alloc] init];
    
    obj.name = @"man";
    obj1.name = @"DOG";
    //[obj2 setName:@"Logan"];
    
    obj2.lastName = @"INVOKER";
    
    NSArray *array = [[NSArray alloc] initWithObjects:obj, obj1, obj2, nil];
    for (ASObject *obj in array) {
    //for (int i = 0; i <[array count]; i++) {
        NSLog(@"name = %@", obj.name);
        //NSLog(@"i = %d", i);
        [obj action];
        if ([obj isKindOfClass:[Test class]]) {
            Test *test = (Test*)obj;
            NSLog(@"last name = %@", test.lastName);
        }
    }
 
    
    /*
    NSArray *array = [NSArray arrayWithObjects:@"STRING1", @"STRING2", nil];
        for (int i = 0; i < [array count]; i++) {
            NSLog(@"%@", [array objectAtIndex:i]);
            NSLog(@"i = %d", i);
 */
   /*
    NSArray *array = [[NSArray alloc] initWithObjects:@"STRING1", @"STRING2", nil];
            for (NSString* string in array) {
                NSLog(@"%@", string);
                NSLog(@"index = %lu", [array indexOfObject:string]);
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
