//
//  NSQueueViewController.m
//  NSQueue
//
//  Created by Raj Wilhoit on 7/2/13.
//  Copyright (c) 2013 UF.rajwilhoit. All rights reserved.
//

#import "NSQueueViewController.h"

@interface NSQueueViewController ()

@end

@implementation NSQueueViewController

@synthesize queue;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)pressedTestQueue:(id)sender
{
    queue = [[NSQueue alloc] init];
    
    // Check the size of the queue
    NSLog(@"Size of the queue: %d", [queue size]);
    
    // Print the queue
    [queue printQueue];
    
    // Dequeue the queue
    NSLog(@"Dequeing queue and the object at index 0 prints: %@", [queue dequeue]);
    
    // Add a String to the queue
    NSLog(@"Adding a string to the queue");
    NSString *queueString1 = @"This is my first string";
    [queue enqueue:queueString1];    
    
    // Check the size of the queue
    NSLog(@"Size of the queue: %d", [queue size]);

    // Add an int and 2 strings to the queue
    NSString *queueString2 = @"This is my second string";
    NSString *queueString3 = @"This is my third string";
    [queue enqueue:queueString2];
    [queue enqueue:queueString3];
    
    // Check the size of the queue
    NSLog(@"Size of the queue: %d", [queue size]);

    // Print contents of the queue
    [queue printQueue];

    // Dequeue the queue
    NSLog(@"Dequeing queue and the object at index 0 prints: %@", [queue dequeue]);
    
    // Check the size of the queue
    NSLog(@"Size of the queue: %d", [queue size]);

    // Print the queue
    [queue printQueue];

    // Remove all objects from the queue
    [queue clearQueue];
    
    // Check the size of the queue
    NSLog(@"Size of the queue: %d", [queue size]);

}

@end
