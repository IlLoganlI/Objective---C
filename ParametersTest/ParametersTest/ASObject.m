//
//  ASObject.m
//  ParametersTest
//
//  Created by Oleksii Skutarenko on 05.10.13.
//  Copyright (c) 2013 Alex Skutarenko. All rights reserved.
//

#import "ASObject.h"

@implementation ASObject


- (id)init
{
    self = [super init];
    if (self) {
         NSLog(@"object is created");
    }
    return self;
}

- (void) dealloc {
    NSLog(@"object is deallocated");
}

- (id)copyWithZone:(NSZone *)zone {
    ASObject* newObject = [[ASObject alloc] init];
    newObject.name = self.name;
    return newObject;
}

@end
