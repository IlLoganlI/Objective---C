//
//  ASAppDelegate.h
//  ParametersTest
//
//  Created by Oleksii Skutarenko on 05.10.13.
//  Copyright (c) 2013 Alex Skutarenko. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ASObject;

@interface ASAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;


@property (copy, nonatomic) ASObject* object;

@end
