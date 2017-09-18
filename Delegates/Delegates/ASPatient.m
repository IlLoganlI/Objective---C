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

- (BOOL) howAreYou {
    NSLog(@"%@ - name patient", self.name);
    BOOL iFeelGood = NO;// arc4random() %2;
    
    if (!iFeelGood) {
        [self.delegate patientFeelsBad:self];
    }
    
    return iFeelGood;
}

- (void) takePill {
    NSLog(@"%@ - take a Pill", self.name);
}

- (void) makeShot {
    NSLog(@"%@ - make a Shot", self.name);

}

@end
