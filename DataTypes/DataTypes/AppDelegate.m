//
//  AppDelegate.m
//  DataTypes
//
//  Created by Admin on 01.08.16.
//  Copyright © 2016 Logan. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
  	  
    
    NSInteger numb = 5;
    NSUInteger numb1 = 15;
    CGFloat flo = 2.5;
    double dou = 3.5;
    NSString *act = @"BEBEBE";
    BOOL test = YES;
    int nti = 10;
    char abc = 'X';
    
    NSNumber* fl = [NSNumber numberWithFloat:flo];
    NSNumber* doub = [NSNumber numberWithDouble:dou];
    NSNumber* ni = [NSNumber numberWithInteger:numb];
    NSNumber* nui = [NSNumber numberWithUnsignedInteger:numb1];
    NSNumber* asd = [NSNumber numberWithBool:test];
    NSNumber* tin = [NSNumber numberWithInt:nti];
    NSNumber* ccc = [NSNumber numberWithChar:abc];
    
    NSArray *list = [[NSArray alloc] initWithObjects: fl, doub, ni, nui, asd, tin, ccc, act, nil];
    
    NSLog(@"Hello guys what is this?- %f, %f, %ld, %lu, %d, %d, %c, %@",
    [[list objectAtIndex:0] floatValue],
    [[list objectAtIndex:1] doubleValue],
    [[list objectAtIndex:2] integerValue],
    [[list objectAtIndex:3] unsignedIntegerValue],
    [[list objectAtIndex:4] boolValue],
    [[list objectAtIndex:5] intValue],
    [[list objectAtIndex:6] charValue],
    act);
    
    
    /*for (NSNumber* number in list) {
        NSLog(@"Hi my name is - %@", number);
    }
    */
    /*
     for (int i = 0; i < [PATIENT13 count]; i++) {
     id <ASList> patient = [PATIENT13 abjextAtIndex:i];
     }
     */
   
    for (int i = 0; i < [list count]; i++) {
        NSNumber *p = [list objectAtIndex:i];
        NSLog(@"Hi - %@",p );
    }
    
    CGPoint point;
     point.x = 1;
     point.y = 2;
    
    CGPoint sss = CGPointMake(2, 3);
    
    CGSize size;
     size.width = 123.1;
     size.height = 125.1;
    
    CGRect rect;
     rect.origin = point;
     rect.size = size;
    
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
