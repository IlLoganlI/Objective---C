//
//  ASViewController.m
//  TouchesTest
//
//  Created by Oleksii Skutarenko on 25.11.13.
//  Copyright (c) 2013 Alex Skutarenko. All rights reserved.
//

#import "ASViewController.h"

@interface ASViewController ()

@property (weak, nonatomic) UIView* testBlock;

@property (assign, nonatomic) CGPoint touchOffset;

@property (readonly, copy) NSArray* allObjects;

@end

@implementation ASViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                                            //CHEST BOARD//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    
    UIView* blackBoard = [[UIView alloc] initWithFrame:CGRectMake(80, 200, 615, 616)];// create black block "blackBoard"
    blackBoard.backgroundColor = [UIColor blackColor];
    [self.view addSubview:blackBoard];
    
    UIView* whiteBoard = [[UIView alloc] initWithFrame:CGRectMake(83, 204, 608, 608)];//create white block "whiteBoard" which lies on the "blackBoard"
    whiteBoard.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:whiteBoard];
    
    CGRect blackBlockCell = CGRectMake(162, 208, 75, 75);//create cube in points х(162) у(208) with dimensions 75х75
    
    for (int i = 0; i < 8; i++) {// create 8 rows of blocks, be 4 blocks "blackCell"
        
        for (int c = 0; c < 4; c++) {//create 4 blocks, interval 75 pixels, main block "blackBlockCell"
            UIView* blackCell = [[UIView alloc] initWithFrame:blackBlockCell];
            blackCell.backgroundColor = [UIColor blackColor];
            [self.view addSubview:blackCell];
            
            blackBlockCell.origin.x += 150;
        }
        
        if (i%2) {// pace block on 8 rows, as a chest board, each 2 rows + 75 pixels
            blackBlockCell.origin.x = 162;
        } else {
            blackBlockCell.origin.x = 87;
        }
        
        blackBlockCell.origin.y += 75;// create interval between rows, on Y coordinate
    }
    
////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    UIView* block = [[UIView alloc] initWithFrame:CGRectMake(30, 30, 50, 50)];
    block.backgroundColor = [UIColor redColor];
    [self.view addSubview:block];
    
    self.testBlock = block;
    
    
    [self chest];
}

- (void) chest {
    //CGRect rrr = CGRectMake(200 + 60i, 30, 50, 50);
    
    for (int i = 0 ; i < 3 ; i++) {
        UIView* redChest = [[UIView alloc] initWithFrame:CGRectMake(200 + 60*i, 30, 50, 50)];
        redChest.backgroundColor = [UIColor redColor];
        [self.view addSubview:redChest];
    }
    
}

#pragma mark - Touches

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
   // [self logTouches:touches withMethod:@"touchesBegan"];
    
    UITouch* touch = [touches anyObject];
    
    CGPoint pointOnMainView = [touch locationInView:self.view];
    
    UIView* view = [self.view hitTest:pointOnMainView withEvent:event];
    
    if (![view isEqual:self.view]) {
        
        self.testBlock = view;
        
        [self.view bringSubviewToFront:self.testBlock];
        
        //CGPoint touchPoint = [touch locationInView:self.testBlock];
        
        /*self.touchOffset = CGPointMake(CGRectGetMidX(self.testBlock.bounds) - touchPoint.x,
                                       CGRectGetMidY(self.testBlock.bounds) - touchPoint.y);*/
        
        //[self.draggingView.layer removeAllAnimations];
        
        [UIView animateWithDuration:0.3
                         animations:^{
                             self.testBlock.transform = CGAffineTransformMakeScale(1.2f, 1.2f);
                             self.testBlock.alpha = 0.3f;
                         }];
        
    } else {
        
        self.testBlock = nil;
        
    }
    
}

- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    
    //[self logTouches:touches withMethod:@"touchesMoved"];
    
    if (self.testBlock) {
        
        UITouch* touch = [touches anyObject];
        
        CGPoint pointOnMainView = [touch locationInView:self.view];
        
        CGPoint correction = CGPointMake(pointOnMainView.x + self.touchOffset.x,
                                         pointOnMainView.y + self.touchOffset.y);
        
        self.testBlock.center = correction;
    }
    
}

- (void) onTouchesEnded {
    
    [UIView animateWithDuration:0.3
                     animations:^{
                         self.testBlock.transform = CGAffineTransformIdentity;
                         self.testBlock.alpha = 1.f;
                     }];
    
    self.testBlock = nil;
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    //[self logTouches:touches withMethod:@"touchesEnded"];
    
    [self onTouchesEnded];
    
}

- (void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    //[self logTouches:touches withMethod:@"touchesCancelled"];
    
    [self onTouchesEnded];
  
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}







@end
