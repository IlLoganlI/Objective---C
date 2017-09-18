//
//  Stydent.m
//  07Protocols
//
//  Created by Admin on 26.07.16.
//  Copyright © 2016 Logan. All rights reserved.
//

#import "Stydent.h"

@implementation Stydent

- (void) study {
    
}

#pragma mark - ASList -

- (BOOL) areYouOk {
    BOOL ok = arc4random() % 2;
    NSLog(@"Is stydent %@ ok? %@", self.name, ok ? @"YES" : @"NO");
    return ok;
}

- (void) takePill {
    NSLog(@"Student %@ takes a pill", self.name);
}

- (void) makeShot {
    NSLog(@"Student %@ make a shot", self.name);
}

- (NSString*) howIsYourFamily {
    return @"I love my family";	
}
@end
