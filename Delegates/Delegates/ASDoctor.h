//
//  ASDoctor.h
//  Delegates
//
//  Created by Admin on 04.08.16.
//  Copyright © 2016 Logan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ASPatient.h"

@protocol ASPatientDelegate;

@interface ASDoctor : NSObject <ASPatientDelegate>

@end
