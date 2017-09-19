//
//  AppDelegate.m
//  13ASMultiThread
//
//  Created by Admin on 17.08.16.
//  Copyright © 2016 Logan. All rights reserved.
//

#import "AppDelegate.h"
#import "ASStudent.h"

@interface AppDelegate ()

@property (strong, nonatomic) NSMutableArray* array;

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
   
    self.array = [NSMutableArray alloc];
    
    ASStudent* student = [[ASStudent alloc] init];
    ASStudent* student1 = [[ASStudent alloc] init];
    ASStudent* student2 = [[ASStudent alloc] init];
    ASStudent* student3 = [[ASStudent alloc] init];
    ASStudent* student4 = [[ASStudent alloc] init];

    student.name = @"Logan";
    student1.name = @"Devid";
    student2.name = @"John";
    student3.name = @"Po";
    student4.name = @"Ben";
    
    _array = [NSMutableArray arrayWithObjects: student, student1, student2, student3, student4, nil];
    
    NSInteger nRandom = 5;
    NSInteger dNumber = 10;
    
    //- (void) numberRandom:(NSInteger) number diapazonNumber:(NSInteger) diapazon;
    
    for (ASStudent *any in _array) {
        [any numberRandom:nRandom diapazonNumber:dNumber];
    }
    //[self performSelector:@selector(printArray) withObject:nil];
    [self performSelector:@selector(printArray) withObject:nil afterDelay:2];
    
    return YES;
}

- (void) printArray {
    NSLog(@" ");
    
    [_array sortUsingComparator:^NSComparisonResult(id obj1, id obj2) {
        
        if ([obj1 finishTime] > [obj2 finishTime]) {
            
            return (NSComparisonResult)NSOrderedDescending;
            
        }
        if ([obj1 finishTime] < [obj2 finishTime]) {
            
            return (NSComparisonResult)NSOrderedDescending;
            
        }
        
        return (NSComparisonResult)NSOrderedSame;
    }];
    
    for (ASStudent *any in _array) {
        
        NSLog(@"Student %@, finishTime %f", any.name, any.finishTime);
       
        
    }

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
