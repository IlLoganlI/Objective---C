//
//  Stydent.h
//  07Protocols
//
//  Created by Admin on 26.07.16.
//  Copyright © 2016 Logan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ASList.h"

@interface Stydent : NSObject <ASList>

@property (assign, nonatomic) NSString *name;

- (void) study;

@end
