//
//  ASPatient.m
//  Delegates
//
//  Created by Admin on 04.08.16.
//  Copyright © 2016 Logan. All rights reserved.
//

#import "ASPatient.h"

@implementation ASPatient

#pragma mark - ASPatient -


- (void) patientFeelBad:( void (^)(ASPatient*)) patient {
    NSLog(@"%@ - name patient", self.name);
    BOOL iFeelGood = NO;// arc4random() %2;
    if (!iFeelGood) {
        patient(self);
    }
}

- (void) takePill {
    NSLog(@"%@ - take a Pill", self.name);
}

- (void) makeShot {
    NSLog(@"%@ - make a Shot", self.name);

}


@end
