//
//  NSMutableArray+StackAdditions.m
//
//  Created by Yang Yubo on 1/3/14.
//  Copyright (c) 2014 Codinn Studio. All rights reserved.
//

#import "NSMutableArray+StackAdditions.h"

@implementation NSMutableArray (StackAdditions)

- (void)push:(id)anObject
{
    [self addObject: anObject];
}

- (id)pop
{
    if(self.count == 0) {
        return nil;
    }
    
    NSUInteger idx = self.count - 1;
    id object = self[idx];
    [self removeObjectAtIndex:idx];
    return object;
}

- (id)peek:(int)index
{
    if(index >= self.count) {
        return nil;
    }
    
    return self[index];
}

- (id)peekHead
{
    return [self lastObject];
}

- (id)peekTail
{
	return [self peek:0];
}

- (BOOL)empty
{
    return self.count==0;
}

@end
