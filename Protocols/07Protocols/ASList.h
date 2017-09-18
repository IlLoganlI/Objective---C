//
//  ASList.h
//  07Protocols
//
//  Created by Admin on 26.07.16.
//  Copyright © 2016 Logan. All rights reserved.
//


#import "Foundation/Foundation.h"

@protocol ASList

@required
@property (assign, nonatomic) NSString *name;

- (BOOL) areYouOk;
- (void) takePill;
- (void) makeShot;

@optional
- (NSString*) howIsYourFamily;
- (NSString*) howIsYouJob;

@end
