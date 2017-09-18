//
//  ASPatient.h
//  Delegates
//
//  Created by Admin on 04.08.16.
//  Copyright © 2016 Logan. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface ASPatient : NSObject

@property (strong, nonatomic) NSString* name;
@property (assign, nonatomic) float temperature;

- (void) takePill;
- (void) makeShot;
- (void) patientFeelBad:( void (^)(ASPatient*)) patient;

@end

