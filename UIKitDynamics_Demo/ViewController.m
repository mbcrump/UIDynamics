//
//  ViewController.m
//  UIKitDynamics_Demo
//
//  Created by Mehfuz Hossain on 8/15/13.
//  Copyright (c) 2013 Telerk Inc. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) UIDynamicAnimator *animator;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.animator = [[UIDynamicAnimator alloc]initWithReferenceView:self.view];
    
    UICollisionBehavior *collision = [[UICollisionBehavior alloc] init];
    
    [collision addItem:self.box];
    
    UIPushBehavior *pushBehavior = [[UIPushBehavior alloc] init];
    
    
    pushBehavior.pushDirection = CGVectorMake(0, 1.0);
    
    [pushBehavior setActive:NO];
    
    [pushBehavior addItem:self.box];
    
    [collision addBoundaryWithIdentifier:@"box" fromPoint:CGPointMake(0, self.view.frame.size.height) toPoint:CGPointMake(self.view.frame.size.width, self.view.frame.size.height)];
    
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(boxTapped:)];
    
    tapGesture.numberOfTapsRequired = 1;
   
    [self.box addGestureRecognizer:tapGesture];
    
    [self.animator addBehavior:pushBehavior];
    [self.animator addBehavior:collision];
}

- (void)boxTapped:(UITapGestureRecognizer*)gesture
{
    for (UIDynamicBehavior *behavior in self.animator.behaviors){
        if ([behavior isKindOfClass:[UIPushBehavior class]]){
            UIPushBehavior *push = (UIPushBehavior*)behavior;
            [push setActive:YES];
        }
    }
}


@end
