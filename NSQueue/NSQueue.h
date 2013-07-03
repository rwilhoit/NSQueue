//
//  NSQueue.h
//  NSQueue
//
//  Created by Raj Wilhoit on 7/2/13.
//  Copyright (c) 2013 UF.rajwilhoit. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSQueue : NSObject  {
    NSMutableArray *queue;
}

@property (nonatomic, retain) NSMutableArray *queue;    // The queue array

- (int)size;                        // Get size of queue
- (void)printQueue;                 // Print queue to logs
- (void)enqueue:(NSString*)object;  // Enqueue object in queue
- (void)clearQueue;                 // Clears the queue of all objects 
- (id)dequeue;                      // Dequeue object from queue
- (BOOL)isEmpty;                    // Check if queue is empty

@end
