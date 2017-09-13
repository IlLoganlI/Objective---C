//
//  ASBoxer.m
//  PropertiesTest
//
//  Created by Oleksii Skutarenko on 02.10.13.
//  Copyright (c) 2013 Alex Skutarenko. All rights reserved.
//

#import "ASBoxer.h"


@interface ASBoxer ()
@property (assign, nonatomic) NSInteger nameCount;
@end


@implementation ASBoxer
@synthesize name = _name;

- (id)init
{
    self = [super init];
    if (self) {
        self.nameCount = 0;
        self.name = @"Default";
        self.age = 1;
        self.height = 0.52f;
        self.weight = 5.f;
    }
    return self;
}

- (void) setName:(NSString *) inputName {
    
  
  NSLog(@"setter setName: is called");
    
    _name = inputName;
}

- (NSString*) name {
    
    self.nameCount = self.nameCount + 1;
    
    NSLog(@"name getter is called %ld times", (long)self.nameCount);
    
    return _name;
}


- (NSInteger) age {
    
    NSLog(@"age getter is called");
    
    return _age;
}

- (NSInteger) howOldAreYou {
    return _age;
}

@end
