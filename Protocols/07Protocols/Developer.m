//
//  Developer.m
//  07Protocols
//
//  Created by Admin on 26.07.16.
//  Copyright © 2016 Logan. All rights reserved.
//

#import "Developer.h"

@implementation Developer

-(void) work {
    
}

#pragma mark - ASList -

- (BOOL) areYouOk {
    BOOL ok = arc4random() % 2;
    NSLog(@"Is developer %@ ok? %@", self.name, ok ? @"YES" : @"NO");
    return ok;
}

- (void) takePill {
    NSLog(@"Developer %@ takes a pill", self.name);
}

- (void) makeShot {
    NSLog(@"Developer %@ make a shot", self.name);
}

- (NSString*) howIsYouJob {
    return @"MY JOB IS AWESOME";
}
@end
