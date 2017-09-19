//
//  ASStudent.m
//  13ASMultiThread
//
//  Created by Admin on 18.08.16.
//  Copyright © 2016 Logan. All rights reserved.
//

#import "ASStudent.h"

@implementation ASStudent

- (void) numberRandom:(NSInteger)number diapazonNumber:(NSInteger)diapazon {
    
dispatch_queue_t queue = dispatch_queue_create("com.loganenterpise.testmethod.queue", DISPATCH_QUEUE_CONCURRENT);
    
    dispatch_async(queue, ^{
       // @autoreleasepool {
            
            double startTime = CFAbsoluteTimeGetCurrent();
            NSInteger i = arc4random()%(diapazon);
            
            NSLog(@"Student %@ start - time %f", _name, startTime);
            
            //@synchronized (self) {
                
                while (number != i) {
                    NSLog(@"Student %@ you lose Sorry! Number is %ld", _name, i);
                    i = arc4random()%(diapazon);
                }
                
                NSLog(@"Student %@ WIN! Number %ld", _name, i);
            //}
            
            _finishTime = CFAbsoluteTimeGetCurrent() - startTime;
            
            NSLog(@"Student  | %@ | FINISHED.", _name);
            NSLog(@"Student TIME - | %f |", _finishTime);
        
       // }

    });
    
}



@end
