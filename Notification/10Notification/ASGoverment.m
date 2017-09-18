//
//  ASGoverment.m
//  10Notification
//
//  Created by Admin on 08.08.16.
//  Copyright © 2016 Logan. All rights reserved.
//

#import "ASGoverment.h"

NSString* const ASGovernmentTaxLevelDidChangeNotification = @"ASGovernmentTaxLevelDidChangeNotification";
NSString* const ASGovernmentSalaryDidChangeNotification = @"ASGovernmentSalaryDidChangeNotification";
NSString* const ASGovernmentPensionDidChangeNotification = @"ASGovernmentPensionDidChangeNotification";
NSString* const ASGovernmentAveragePriceDidChangeNotification = @"ASGovernmentAveragePriceDidChangeNotification";

NSString* const ASGovernmentTaxLevelUserInfoKey = @"ASGovernmentTaxLevelUserInfoKey";
NSString* const ASGovernmentSalaryUserInfoKey = @"ASGovernmentSalaryUserInfoKey";
NSString* const ASGovernmentPensionUserInfoKey = @"ASGovernmentPensionUserInfoKey";
NSString* const ASGovernmentAveragePriceUserInfoKey = @"ASGovernmentAveragePriceUserInfoKey";

@implementation ASGoverment

- (id) init
{
    self = [super init];
    if (self) {
        _taxLevel = 10.9f;
        _salary = 1200.f;
        _pension = 1300.f;
        _averagePrice = 20.f;
    }
    return self;
}

- (void) setTaxLevel:(float)taxLevel {
    _taxLevel = taxLevel;
    
    NSDictionary* dictionary = [NSDictionary dictionaryWithObject:[NSNumber numberWithFloat:taxLevel] forKey:ASGovernmentTaxLevelUserInfoKey];
    
    [[NSNotificationCenter defaultCenter] postNotificationName:ASGovernmentTaxLevelDidChangeNotification
                                                        object:nil
                                                      userInfo:dictionary];
}

- (void) setSalary:(float)salary {
    _salary = salary;
    
    NSDictionary* dictionary = [NSDictionary dictionaryWithObject:[NSNumber numberWithFloat:salary] forKey:ASGovernmentSalaryUserInfoKey];
    
    [[NSNotificationCenter defaultCenter] postNotificationName:ASGovernmentSalaryDidChangeNotification
                                                        object:nil
                                                      userInfo:dictionary];

}

- (void) setPension:(float)pension {
    _pension = pension;
  
    NSDictionary* dictionary = [NSDictionary dictionaryWithObject:[NSNumber numberWithFloat:pension] forKey:ASGovernmentPensionUserInfoKey];
    
    [[NSNotificationCenter defaultCenter] postNotificationName:ASGovernmentPensionDidChangeNotification
                                                        object:nil
                                                      userInfo:dictionary];
}

- (void) setAveragePrice:(float)averagePrice {
    _averagePrice = averagePrice;
    
    NSDictionary* dictionary = [NSDictionary dictionaryWithObject:[NSNumber numberWithFloat:averagePrice] forKey:ASGovernmentAveragePriceUserInfoKey];
    
    [[NSNotificationCenter defaultCenter] postNotificationName:ASGovernmentAveragePriceDidChangeNotification
                                                        object:nil
                                                      userInfo:dictionary];
}
@end
