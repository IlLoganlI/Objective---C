//
//  ViewController.m
//  HomeworkUIViewGeometry
//
//  Created by Admin on 15.02.17.
//  Copyright © 2017 LoganCorporation. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

//@property (strong, nonatomic) NSArray* heapBlackRect;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
   /* UIView* blackBlock = [[UIView alloc] init];
    blackBlock = [self createRectView:CGRectMake(16, 100, 288, 288) colorViewRect:[UIColor blackColor] andParentView:self.view];
    
    UIView* whiteBlock = [[UIView alloc] init];
    whiteBlock = [self createRectView:CGRectMake(17, 101, 286, 286) colorViewRect:[UIColor whiteColor] andParentView:self.view];
    
    self.heapBlackRect = [[NSMutableArray alloc] init];*/
    
    CGRect blackRect = CGRectMake(3, 3, 35, 35);
    
    
    /*UIView* view1 = [[UIView alloc] initWithFrame:CGRectMake(100, 150, 200, 50)];
    view1.backgroundColor = [[UIColor redColor] colorWithAlphaComponent:0.8];
    [self.view addSubview:view1];*/
    
   /* for (int i = 0; i < 8; i++) {
        
        for (int j = 0; j < 4; j++) {
            
            UIView* blackView = [[UIView alloc] initWithFrame:CGRectMake(3, 3, 35, 35)];
            blackView.backgroundColor = [UIColor blackColor];
            [self.view addSubview:_viewWhiteBlock];
            
            
            UIView* viewBlackBlock = [[UIView alloc] init];
            viewBlackBlock = [self createRectView:blackRect colorViewRect:[UIColor blackColor] andParentView:self.viewWhiteBlock];
            
            blackRect.origin.x += 70;
        }
        
        if (i%2) {
            blackRect.origin.x = 3;
        }else{
            blackRect.origin.x = 38;
        }
        blackRect.origin.y += 35;
    }*/
}
/* Не зовсім зрозуміло колорвіз.....
- (void) didRotateFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation {
    
    UIView* variantColor = [UIColor colorWithHue:((arc4random() %100 +3) * 0.1)
                                      saturation:((arc4random() %100 +3) * 0.1)
                                      brightness:((arc4random() %100 +3) * 0.1)
                                           alpha:((arc4random() %100 +3) * 0.1)];
    
    for (UIView* anyView in self.heapBlackRect) {
        anyView.backgroundColor = variantColor;
    }
    
}*/

- (UIView*) createRectView: (CGRect) viewRect colorViewRect: (UIColor *) viewColor andParentView: (UIView *) viewParent{
    
    UIView* viewLocal = [[UIView alloc] initWithFrame:viewRect];
    viewLocal.backgroundColor = viewColor;
    /*[viewParent addSubview:viewLocal];
    viewLocal.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin  |
                                  UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleBottomMargin | UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;*/
    
    return viewLocal;
    
}

/*
 NSLog(@"\nframe = %@\nbounds = %@", NSStringFromCGRect(self.testView.frame), NSStringFromCGRect(self.testView.bounds));
 
 NSLog(@"\nframe = %@\nbounds = %@", NSStringFromCGRect(self.view.frame), NSStringFromCGRect(self.view.bounds));
 
 CGPoint origin = CGPointZero;
 
 origin = [self.view convertPoint:origin toView:self.view.window];
 
 NSLog(@"origin = %@", NSStringFromCGPoint(origin));
 
 CGRect r = self.view.bounds;
 r.origin.y = 0;
 r.origin.x = CGRectGetWidth(r) - 100;
 r.size = CGSizeMake(100, 100);
-------------------------------------------------------------------------------------------
 UIView* v = [[UIView alloc] initWithFrame:r];
 v.backgroundColor = [[UIColor blueColor] colorWithAlphaComponent:0.8];
 [self.view addSubview:v];
 
 UIView* view1 = [[UIView alloc] initWithFrame:CGRectMake(100, 150, 200, 50)];
 view1.backgroundColor = [[UIColor redColor] colorWithAlphaComponent:0.8];
 [self.view addSubview:view1];
 
 UIView* view2 = [[UIView alloc] initWithFrame:CGRectMake(80, 130, 50, 250)];
 view2.backgroundColor = [[UIColor greenColor] colorWithAlphaComponent:0.8];
 
 view2.autoresizingMask =    UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight |
 UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleBottomMargin;
 [self.view addSubview:view2];
 
 self.testView = view2;
 
 [self.view bringSubviewToFront:view1];
 */


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
