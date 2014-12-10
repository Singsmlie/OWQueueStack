//
//  NSMutableArray+QueueAdditions.m
//
//  Created by Yang Yubo on 1/3/14.
//  Copyright (c) 2014 Codinn Studio. All rights reserved.
//

#import "NSMutableArray+QueueAdditions.h"

@implementation NSMutableArray (QueueAdditions)

// Add to the tail of the queue
- (void)enqueue:(id)anObject
{
    // Push the item in
    [self addObject:anObject];
}

- (void)enqueueObjectsFromArray:(NSArray *)objects
{
    // Push items in
    [self addObjectsFromArray:objects];
}

// Grab the next item in the queue, if there is one
- (id)dequeue
{
    if(self.count == 0) {
        return nil;
    }
    
    id object = self[0];
    [self removeObjectAtIndex:0];
    return object;
}

// Takes a look at an object at a given location
- (id)peek:(int)index
{
    if(index >= self.count) {
        return nil;
    }
    
    return self[index];
}

// Let's take a look at the next item to be dequeued
- (id)peekHead
{
    // Peek at the next item
	return [self peek:0];
}

// Let's take a look at the last item to have been added to the queue
- (id)peekTail
{
    // Pick out the last item
	return [self lastObject];
}

// Checks if the queue is empty
- (BOOL)empty
{
    return self.count==0;
}

@end
