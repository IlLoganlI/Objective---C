//
//  ASBoxer.h
//  PropertiesTest
//
//  Created by Oleksii Skutarenko on 02.10.13.
//  Copyright (c) 2013 Alex Skutarenko. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ASBoxer : NSObject

@property (strong, nonatomic) NSString* name;
@property (assign, nonatomic) NSInteger age;
@property (assign, nonatomic) CGFloat height;
@property (assign, nonatomic) CGFloat weight;



- (NSInteger) howOldAreYou;

@end
