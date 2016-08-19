//
//  InterfaceController.m
//  动画的使用 WatchKit Extension
//
//  Created by Anthony on 16/8/20.
//  Copyright © 2016年 SLZeng. All rights reserved.
//

#import "InterfaceController.h"


@interface InterfaceController()

@property (unsafe_unretained, nonatomic) IBOutlet WKInterfaceButton *ball;

@end


@implementation InterfaceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];

    // Configure interface objects here.
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

/**
 *  上移
 */
- (IBAction)moveUp {
    [self animateWithDuration:2.0f animations:^{
        [self.ball setVerticalAlignment:WKInterfaceObjectVerticalAlignmentTop];
    }];
}

/**
 *  下移
 */
- (IBAction)moveDown {
    [self animateWithDuration:2.0f animations:^{
        [self.ball setVerticalAlignment:WKInterfaceObjectVerticalAlignmentBottom];
    }];

}

/**
 *  左移
 */
- (IBAction)moveLeft {
    [self animateWithDuration:2.0f animations:^{
        [self.ball setHorizontalAlignment:WKInterfaceObjectHorizontalAlignmentLeft];
    }];

}

/**
 *  右移
 */
- (IBAction)moveRight {
    [self animateWithDuration:2.0f animations:^{
        [self.ball setHorizontalAlignment:WKInterfaceObjectHorizontalAlignmentRight];
    }];
}

/**
 *  缩放
 */
- (IBAction)MoveZoom {
    [self animateWithDuration:2.0f animations:^{
        [self.ball setRelativeWidth:0.8 withAdjustment:10];
        [self.ball setRelativeHeight:0.4 withAdjustment:10];
    }];
}

@end



