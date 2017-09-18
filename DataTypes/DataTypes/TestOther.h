//
//  TestOther.h
//  DataTypes
//
//  Created by Admin on 01.08.16.
//  Copyright © 2016 Logan. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    ASGenderMale,
    ASGenderFamale
 } ASGender;

@interface TestOther : NSObject

@property (strong, nonatomic) NSString* name;
@property (assign, nonatomic) ASGender  gender;


@end
