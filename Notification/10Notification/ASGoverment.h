//
//  ASGoverment.h
//  10Notification
//
//  Created by Admin on 08.08.16.
//  Copyright © 2016 Logan. All rights reserved.
//

#import <Foundation/Foundation.h>

extern NSString* const ASGovernmentTaxLevelDidChangeNotification;
extern NSString* const ASGovernmentSalaryDidChangeNotification;
extern NSString* const ASGovernmentPensionDidChangeNotification;
extern NSString* const ASGovernmentAveragePriceDidChangeNotification;

extern NSString* const ASGovernmentTaxLevelUserInfoKey;
extern NSString* const ASGovernmentSalaryUserInfoKey;
extern NSString* const ASGovernmentPensionUserInfoKey;
extern NSString* const ASGovernmentAveragePriceUserInfoKey;

@interface ASGoverment : NSObject

@property (assign, nonatomic) float taxLevel;
@property (assign, nonatomic) float salary;
@property (assign, nonatomic) float pension;
@property (assign, nonatomic) float averagePrice;

@end
