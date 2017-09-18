//
//  ASDoctor.m
//  10Notification
//
//  Created by Admin on 08.08.16.
//  Copyright © 2016 Logan. All rights reserved.
//

#import "ASDoctor.h"
#import "ASGoverment.h"

@implementation ASDoctor

#pragma mark - Init -

- (id) init
{
    self = [super init];
    if (self) {
        
        NSNotificationCenter* nc = [NSNotificationCenter defaultCenter];
        
        [nc addObserver:self
               selector:@selector(salaryChangeNotification:)
                   name:ASGovernmentSalaryDidChangeNotification
                 object:nil];
        [nc addObserver:self
               selector:@selector(averagePriceCnageNotification:)
                   name:ASGovernmentAveragePriceDidChangeNotification
                 object:nil];
        
    }
    return self;
}

- (void) dealloc {
    
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

#pragma mark - Notification -

- (void) salaryChangeNotification:(NSNotification*) notification {
    
    NSNumber* value = [notification.userInfo objectForKey:ASGovernmentSalaryUserInfoKey];
    
    float salary = [value floatValue];
    
    if (salary < self.salary) {
        NSLog(@"Doctors are NOT happy");
    } else {
        NSLog(@"Doctors are happy");
    }
    
    self.salary = salary;
}

- (void) averagePriceCnageNotification:(NSNotification*) notification {
    
    NSNumber* value = [notification.userInfo objectForKey:ASGovernmentAveragePriceUserInfoKey];
    
    float avPrice = [value floatValue];
    
    if (avPrice < self.avPrice) {
        NSLog(@"Doctor are NOT happy");
    } else {
        NSLog(@"Doctor are happy");
    }
    
    self.avPrice = avPrice;
}
/*
 NSNumber* value = [notification.userInfo objectForKey:ASGovernmentSalaryUserInfoKey];
 
 CGFloat salary = [value floatValue];
 
 if (salary < self.salary) {
 NSLog(@"Doctors are NOT happy");
 } else {
 NSLog(@"Doctors are happy");
 }
 
 self.salary = salary;
 */
@end
