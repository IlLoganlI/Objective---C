//
//  ViewController.m
//  GestureMyHomework
//
//  Created by Admin on 06.04.17.
//  Copyright © 2017 LoganCorporation. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIGestureRecognizerDelegate>

@property (strong, nonatomic) UIView* testView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIView* view = [[UIView alloc] initWithFrame:CGRectMake(CGRectGetMidX(self.view.bounds) - 50,
                                                            CGRectGetMidY(self.view.bounds) - 50,
                                                            100, 100)];
    view.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin |
                            UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleBottomMargin;
    view.backgroundColor = [UIColor whiteColor];
    
    [self.view addSubview:view];
    
    UIImageView* picture = [[UIImageView alloc] initWithFrame:CGRectMake(-75, -50, 300, 200)];
    picture.image = [UIImage imageNamed:@"Smile.png"];
    [view addSubview:picture];
    
    self.testView = view;
    
/***********************************************Tap**************************************************************/
    
    UITapGestureRecognizer* tapView =
    [[UITapGestureRecognizer alloc] initWithTarget:self
                                            action:@selector(tapView:)];
    [self.view addGestureRecognizer:tapView];
    
    UITapGestureRecognizer* tapViewDouble =
    [[UITapGestureRecognizer alloc] initWithTarget:self
                                         action:@selector(tapViewDouble:)];
    tapViewDouble.numberOfTapsRequired = 2;
    tapViewDouble.numberOfTouchesRequired = 2;
    
    [self.view addGestureRecognizer:tapViewDouble];
    [tapView requireGestureRecognizerToFail:tapViewDouble];
    
/***********************************************Swipe**************************************************************/
    
    UISwipeGestureRecognizer* horizontalSwipeRight =
    [[UISwipeGestureRecognizer alloc] initWithTarget:self
                                              action:@selector(horizontalSwipeRight:)];
    
    horizontalSwipeRight.direction = UISwipeGestureRecognizerDirectionRight;
    //horizontalSwipeRight.delegate = self;
    [self.view addGestureRecognizer:horizontalSwipeRight];
    
    UISwipeGestureRecognizer* horizontalSwipeLeft =
    [[UISwipeGestureRecognizer alloc] initWithTarget:self
                                              action:@selector(horizontalSwipeLeft:)];
    
    horizontalSwipeLeft.direction = UISwipeGestureRecognizerDirectionLeft;
    //horizontalSwipeLeft.delegate = self;
    [self.view addGestureRecognizer:horizontalSwipeLeft];
    
  //  CGAffineTransform
    
}



#pragma mark - Gestures

- (void)tapView:(UITapGestureRecognizer*) tapView {
    
    [UIView animateKeyframesWithDuration:3
                                   delay:0
                                 options:UIViewKeyframeAnimationOptionCalculationModeLinear | UIViewKeyframeAnimationOptionBeginFromCurrentState
                              animations:^{
                                  self.testView.center = [tapView locationInView:self.view];
                              }
                              completion:^(BOOL finished) {
                                  
                              }];
}

- (void)tapViewDouble:(UITapGestureRecognizer*) tapView {
    
    [self.testView.layer removeAllAnimations];
    
}

- (void)horizontalSwipeRight:(UISwipeGestureRecognizer*) horizontalSwipeRight {
    
    [self rotationView:self.testView rotationAngle:3.14 andFullCircle:YES];
}

- (void)horizontalSwipeLeft:(UISwipeGestureRecognizer*) horizontalSwipeLeft {
    
    [self rotationView:self.testView rotationAngle:-3.14 andFullCircle:YES];
}

#pragma mark - Circle

-(void) rotationView:(UIView*) viewRotate rotationAngle:(CGFloat) angleRotate andFullCircle:(BOOL) fullCircle {
    
    CGAffineTransform currentTransform = viewRotate.transform;
    CGAffineTransform newTransform = CGAffineTransformRotate(currentTransform, angleRotate);
    
    [UIView animateKeyframesWithDuration:0.6
                                   delay:0
                                 options:UIViewAnimationOptionCurveLinear | UIViewAnimationOptionBeginFromCurrentState
                              animations:^{
                                  
                                  viewRotate.transform = newTransform;
                                  
                              } completion:^(BOOL finished) {
                                  
                                  __weak UIView* minorView = viewRotate;
                                  
                                  if (fullCircle) {
                                      
                                      [self rotationView:minorView rotationAngle:angleRotate andFullCircle:FALSE];
                                      
                                  }
                              }];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
