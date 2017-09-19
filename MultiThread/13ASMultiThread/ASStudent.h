//
//  ASStudent.h
//  13ASMultiThread
//
//  Created by Admin on 18.08.16.
//  Copyright © 2016 Logan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ASStudent : NSObject

@property (strong, nonatomic) NSString* name;
@property (strong, nonatomic) NSMutableArray* array;
@property (assign, nonatomic) double finishTime;

- (void) numberRandom:(NSInteger) number diapazonNumber:(NSInteger) diapazon;
    
@end
