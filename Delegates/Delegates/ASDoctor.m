//
//  ASDoctor.m
//  Delegates
//
//  Created by Admin on 04.08.16.
//  Copyright © 2016 Logan. All rights reserved.
//

#import "ASDoctor.h"

@implementation ASDoctor

#pragma mark - ASDoctor -

- (void) patientFeelsBad:(ASPatient *)patient {
    NSLog(@"Patient %@ feels bad", patient.name);
    if (patient.temperature >= 37.0f && patient.temperature <= 39.0f) {
        [patient takePill];
    } else if (patient.temperature >= 39.0f){
        [patient makeShot];
    } else /*(patient.temperature = 36.6);*/ {
        NSLog(@"Patient %@ shoud rest", patient.name);
    }
}

- (void) patient:(ASPatient *)patient hasQuestin:(NSString *)question {
    NSLog(@"Patient %@ has a question: %@", patient.name, question);
}

@end
