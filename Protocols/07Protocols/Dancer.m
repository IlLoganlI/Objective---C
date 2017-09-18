//
//  Dancer.m
//  07Protocols
//
//  Created by Admin on 26.07.16.
//  Copyright © 2016 Logan. All rights reserved.
//

#import "Dancer.h"

@implementation Dancer

- (void) dance {
    
}

#pragma mark - ASList -

- (BOOL) areYouOk {
    BOOL ok = arc4random() % 2;
    NSLog(@"Is Dancer %@ ok? %@", self.name, ok ? @"YES" : @"NO");
    return ok;
}

- (void) takePill {
    NSLog(@"Dancer %@ takes a pill", self.name);
}

- (void) makeShot {
    NSLog(@"Dancer %@ make a shot", self.name);
}


@end
