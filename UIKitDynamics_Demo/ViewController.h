//
//  ViewController.h
//  UIKitDynamics_Demo
//
//  Created by Mehfuz Hossain on 8/15/13.
//  Copyright (c) 2013 Telerk Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Box.h"

@interface ViewController : UIViewController<UIDynamicAnimatorDelegate>
@property (strong, nonatomic) IBOutlet Box *box;

@end
