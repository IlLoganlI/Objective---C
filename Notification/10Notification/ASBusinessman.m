//
//  ASBusinessman.m
//  10Notification
//
//  Created by Admin on 08.08.16.
//  Copyright © 2016 Logan. All rights reserved.
//

#import "ASBusinessman.h"
#import "ASGoverment.h"

@implementation ASBusinessman

#pragma mark - Init -

- (id) init
{
    self = [super init];
    if (self) {
        
        NSNotificationCenter* nc = [NSNotificationCenter defaultCenter];
        
        [nc addObserver:self
               selector:@selector(taxLevelChangeNotification:)
                   name:ASGovernmentTaxLevelDidChangeNotification
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

- (void) taxLevelChangeNotification:(NSNotification*) notification {
    
    NSNumber* value = [notification.userInfo objectForKey:ASGovernmentTaxLevelDidChangeNotification];
    
    float taxLevel = [value floatValue];
    
    if (taxLevel < self.taxLevel) {
        NSLog(@"Businessman are NOT happy");
    } else {
        NSLog(@"Businessman are happy");
    }
    
    self.taxLevel = taxLevel;
    
}

- (void) averagePriceCnageNotification:(NSNotification*) notification {
    
    NSNumber* value = [notification.userInfo objectForKey:ASGovernmentAveragePriceUserInfoKey];
    
    float avPrice = [value floatValue];
    
    if (avPrice < self.avPrice) {
        NSLog(@"Businessman are NOT happy");
    } else {
        NSLog(@"Businessman are happy");
    }
    
    self.avPrice = avPrice;
    
}
@end
