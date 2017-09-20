//
//  ViewController.m
//  UIViewAnimationHomework
//
//  Created by Admin on 22.02.17.
//  Copyright © 2017 LoganCorporation. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) UIView* testBlockOne;
@property (weak, nonatomic) UIView* testBlockTwo;
@property (weak, nonatomic) UIView* testBlockThree;
@property (weak, nonatomic) UIView* testBlockFour;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIView * view = [[UIView alloc] initWithFrame:CGRectMake(1, 1, 50, 50)];
    view.backgroundColor = [UIColor blueColor];
    [self.view addSubview:view];
    
    UIView * view1 = [[UIView alloc] initWithFrame:CGRectMake(1, 56, 50, 50)];
    view1.backgroundColor = [UIColor greenColor];
    [self.view addSubview:view1];
    
    UIView * view2 = [[UIView alloc] initWithFrame:CGRectMake(1, 111, 50, 50)];
    view2.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:view2];
    
    UIView * view3 = [[UIView alloc] initWithFrame:CGRectMake(1, 165, 50, 50)];
    view3.backgroundColor = [UIColor blackColor];
    [self.view addSubview:view3];
    
    self.testBlockOne = view;
    self.testBlockTwo = view1;
    self.testBlockThree = view2;
    self.testBlockFour = view3;
    
    
}

- (void) viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
  
    //for (UIView* viewArray in self.arrayView) {
        
      //  NSInteger indexArray = [self.arrayView indexOfObject:viewArray];
       // UIViewAnimationOptions animationOptions = indexArray << 16 | 1 << 3 | 1 << 4;
        
    [UIView animateWithDuration:10
                          delay:2
                        options: UIViewAnimationOptionCurveLinear | UIViewAnimationOptionRepeat |
     UIViewAnimationOptionAutoreverse//animationOptions
                     animations:^{
                         self.testBlockOne.backgroundColor = [self randomColor];
                         self.testBlockOne.transform = CGAffineTransformMakeTranslation(715, 0);
                     }
                     completion:^(BOOL finished) {
                         NSLog(@"Animation Finish - %d", finished);
                     }];
 //   }
    [UIView animateWithDuration:10
                          delay:2
                        options: UIViewAnimationOptionCurveEaseIn | UIViewAnimationOptionRepeat |
                                 UIViewAnimationOptionAutoreverse
                     animations:^{
                         self.testBlockTwo.backgroundColor = [self randomColor];
                         self.testBlockTwo.transform = CGAffineTransformMakeTranslation(715, 0);
                     }
                     completion:^(BOOL finished) {
                          NSLog(@"Animation Finish - %d", finished);
                     }];
    
    [UIView animateWithDuration:10
                          delay:2
                        options: UIViewAnimationOptionCurveEaseOut | UIViewAnimationOptionRepeat |
                                 UIViewAnimationOptionAutoreverse
                     animations:^{
                         self.testBlockThree.backgroundColor = [self randomColor];
                         self.testBlockThree.transform = CGAffineTransformMakeTranslation(715, 0);
                     }
                     completion:^(BOOL finished) {
                         NSLog(@"Animation Finish - %d", finished);
                     }];
    
    [UIView animateWithDuration:10
                          delay:2
                        options: UIViewAnimationOptionCurveEaseInOut | UIViewAnimationOptionRepeat |
                                 UIViewAnimationOptionAutoreverse
                     animations:^{
                         self.testBlockFour.backgroundColor = [self randomColor];
                         self.testBlockFour.transform = CGAffineTransformMakeTranslation(715, 0);
                     }
                     completion:^(BOOL finished) {
                         NSLog(@"Animation Finish - %d", finished);
                     }];
}


- (UIColor*) randomColor {
    CGFloat r = (CGFloat)(arc4random() % 256) / 255.f;
    CGFloat g = (CGFloat)(arc4random() % 256) / 255.f;
    CGFloat b = (CGFloat)(arc4random() % 256) / 255.f;
    
    return [UIColor colorWithRed:r green:g blue:b alpha:1.f];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
