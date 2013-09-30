//
//  Box.m
//  UIKitDynamics_Demo
//
//  Created by Mehfuz Hossain on 8/15/13.
//  Copyright (c) 2013 Telerk Inc. All rights reserved.
//

#import "Box.h"

@implementation Box

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetFillColorWithColor(context, [UIColor blackColor].CGColor);
    CGContextSetStrokeColorWithColor(context, [UIColor blackColor].CGColor);
    CGContextFillRect(context, rect);
}

@end
