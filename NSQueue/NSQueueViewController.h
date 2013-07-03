//
//  NSQueueViewController.h
//  NSQueue
//
//  Created by Raj Wilhoit on 7/2/13.
//  Copyright (c) 2013 UF.rajwilhoit. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NSQueue.h"

@interface NSQueueViewController : UIViewController {
    NSQueue *queue;
}

- (IBAction)pressedTestQueue:(id)sender;

@property (nonatomic,retain) NSQueue *queue;

@end
