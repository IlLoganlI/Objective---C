//
//  ASPatient.h
//  Delegates
//
//  Created by Admin on 04.08.16.
//  Copyright © 2016 Logan. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ASPatientDelegate;

@interface ASPatient : NSObject

@property (strong, nonatomic) NSString* name;
@property (assign, nonatomic) float temperature;
@property (weak, nonatomic) id <ASPatientDelegate> delegate;

- (BOOL) howAreYou;
- (void) takePill;
- (void) makeShot;

@end

@protocol ASPatientDelegate
@required
- (void) patientFeelsBad:(ASPatient*) patient;
- (void) patient:(ASPatient*) patient hasQuestin:(NSString*) question;

@end
