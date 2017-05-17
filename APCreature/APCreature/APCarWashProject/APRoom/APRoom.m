//
//  APRooms.m
//  APCreature
//
//  Created by Aleksandr Poliakov on 29.04.17.
//  Copyright © 2017 Aleksandr Poliakov. All rights reserved.
//

#import "APRoom.h"
#import "APBuilding.h"

static const NSUInteger APRoomDefaultCapacity = 10;

@interface APRoom ()
@property (nonatomic, retain)   NSMutableArray      *mutableWorkers;
@property (nonatomic, assign)   NSUInteger          capacity;

@end

@implementation APRoom
@dynamic workers;
@dynamic workersCount;
@dynamic full;

#pragma mark -
#pragma mark Class Methods

+ (id)room {
    return [self roomWithCapacity:APRoomDefaultCapacity];
}

+ (id)roomWithCapacity:(NSUInteger)capacity {
    return [[[self alloc] initWithCapacity:capacity] autorelease];
}

#pragma mark-
#pragma mark Initializatinos and Deallocations

-(void)dealloc {
    self.mutableWorkers = nil;
    
    [super dealloc];
}

- (instancetype)init {
    return [self initWithCapacity:APRoomDefaultCapacity];
}

- (instancetype)initWithCapacity:(NSUInteger)capacity {
    self = [super init];
    
    self.mutableWorkers = [[NSMutableArray new] autorelease];
    self.capacity = capacity;
    
    return self;
}

#pragma mark-
#pragma mark Accessors

- (NSArray *)workers {
    return [[self.mutableWorkers copy] autorelease];
}

- (NSUInteger)workersCount {
    return [self.mutableWorkers count];
}

- (BOOL)isFull {
    return self.capacity <= self.workersCount;
}

#pragma mark -
#pragma mark Public Methods

- (BOOL)addWorker:(APWorker *)worker {
    if (nil == worker || self.capacity <= self.workersCount) {
        return NO;
    }
    [self.mutableWorkers addObject:worker];
    
    return YES;
}

- (void)removeWorker:(APWorker *)worker {
    [self.mutableWorkers removeObject:worker];
}

@end
