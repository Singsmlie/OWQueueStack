//
//  NSMutableArray+StackAdditions.h
//
//  Created by Yang Yubo on 1/3/14.
//  Copyright (c) 2014 Codinn. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSMutableArray (StackAdditions)

/** Push an object onto the end of this array (like a LIFO stack).
 *
 * @param object the object to push onto the stack.
 */
- (void)push:(id)obj;

/** Pop the last object off the array (like a LIFO stack).
 *
 * @return the object that was removed.
 */
- (id)pop;

/** Peek the object at the specific index without removing the object.
 *
 * @return the object at the specific index.
 */
- (id)peek:(int)index;

/** Peek at the top of the pop without removing the object.
 *
 * @return the object at the top of the pop.
 */
- (id)peekHead;

/** Peek at the tail of the pop without removing the object.
 *
 * @return the object at the tail of the pop.
 */
- (id)peekTail;

/** Checks if the queue is empty.
 *
 * @return YES if queue is empty, otherwise return NO.
 */
- (BOOL)empty;

@end
