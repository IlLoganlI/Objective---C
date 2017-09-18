//
//  ASPensioner.m
//  10Notification
//
//  Created by Admin on 08.08.16.
//  Copyright © 2016 Logan. All rights reserved.
//

#import "ASPensioner.h"
#import "ASGoverment.h"

@implementation ASPensioner

#pragma mark - Init -

- (id) init
{
    self = [super init];
    if (self) {
        
        NSNotificationCenter* nc = [NSNotificationCenter defaultCenter];
        
        [nc addObserver:self
               selector:@selector(pensionChangeNotification:)
                   name:ASGovernmentPensionDidChangeNotification
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

- (void) pensionChangeNotification:(NSNotification*) notification {
    
    NSNumber* value = [notification.userInfo objectForKey:ASGovernmentPensionUserInfoKey];
    
    float pension = [value floatValue];
    
    if (pension < self.pension) {
        NSLog(@"Pensioner are NOT happy");
    } else {
        NSLog(@"Pensioner are happy");
    }
    
    self.pension = pension;
    
}

- (void) averagePriceCnageNotification:(NSNotification*) notification {
    
    NSNumber* value = [notification.userInfo objectForKey:ASGovernmentAveragePriceUserInfoKey];
    
    float avPrice = [value floatValue];
    
    if (avPrice < self.avPrice) {
        NSLog(@"Pensioner are NOT happy");
    } else {
        NSLog(@"Pensioner are happy");
    }
    
    self.avPrice = avPrice;
    
}

@end
