//
//  NSQueue.m
//  NSQueue
//
//  Created by Raj Wilhoit on 7/2/13.
//  Copyright (c) 2013 UF.rajwilhoit. All rights reserved.
//

#import "NSQueue.h"

@implementation NSQueue

@synthesize queue;

- (int)size
{
    return [queue count];
}

- (void)printQueue
{
    if([queue count] == 0)
    {
        NSLog(@"Queue is empty! Cannot print.");
    }
    else
    {
        for(int i=0;i<[queue count]; i++)
        {
            NSLog(@"Object at index %d is: %@", i, [queue objectAtIndex:i]);
        }
    }
}

- (void)clearQueue
{
    [queue removeAllObjects];
}

- (void)enqueue:(id)object
{
    if([queue count] == 0)
    {
        queue = [[NSMutableArray alloc] init];
    }
    
    [queue addObject:object];
}

- (id)dequeue
{
    if([queue count] != 0)
    {
        // Get the object at index 0
        id object = [queue objectAtIndex:0];
        
        // Remove the object from index 0
        [queue removeObjectAtIndex:0];
        
        // Return the object
        return object;
    }
    else
    {
        return nil;
    }
}

- (BOOL)isEmpty {

    if([queue count] == 0)
    {
        return YES;
    }
    else
    {
        return NO;
    }
    
}

@end
