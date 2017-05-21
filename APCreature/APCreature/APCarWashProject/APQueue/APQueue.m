//
//  APQueue.m
//  APCreature
//
//  Created by Aleksandr Poliakov on 12.05.17.
//  Copyright © 2017 Aleksandr Poliakov. All rights reserved.
//

#import "APQueue.h"
#import "NSObject+APObject.h"

@interface APQueue ()
@property (nonatomic, retain) NSMutableArray  *objects;

@end

@implementation APQueue

@dynamic count;
@dynamic empty;

#pragma mark -
#pragma mark Initializtions and Deallocations

- (void)dealloc {
    self.objects = nil;
    
    [super dealloc];
}

- (id)init {
    self = [super init];
    self.objects = [NSMutableArray object];
    
    return self;
}

#pragma mark -
#pragma mark Accessors Methods

- (NSUInteger)count {
    return [self.objects count];
}

- (BOOL)empty {
    return self.count != 0;
}

#pragma mark -
#pragma mark Public Methods

- (void)enqueue:(id)object {
    if (object) {
        [self.objects addObject:object];
    }
}

- (id)dequeue {
    if (!self.empty) {
        return nil;
    }
    
    id object = [[self.objects.firstObject retain] autorelease];
    [self.objects removeObjectAtIndex:0];
    
    return object;
}

@end
