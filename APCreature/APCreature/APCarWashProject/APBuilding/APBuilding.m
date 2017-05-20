//
//  APBuilding.m
//  APCreature
//
//  Created by Aleksandr Poliakov on 28.04.17.
//  Copyright © 2017 Aleksandr Poliakov. All rights reserved.
//

#import "APBuilding.h"
#import "APRoom.h"
#import "APWorker.h"
#import "NSArray+APExtention.h"

@interface APBuilding ()
@property (nonatomic, retain) NSMutableArray *mutableRooms;

- (APRoom *)freeRoom;

@end

@implementation APBuilding

@dynamic rooms;

#pragma mark-
#pragma mark Initializatinos and Deallocations

- (void)dealloc {
    self.mutableRooms = nil;
    
    [super dealloc];
}

- (id)init {
    self = [super init];
    self.mutableRooms = [NSMutableArray new];
    
    return self;
}

#pragma mark-
#pragma mark Accessors Methods

- (NSArray *)rooms {
    return [[self.mutableRooms copy] autorelease];
}

#pragma mark -
#pragma mark Public Methods

- (void)addRoom:(APRoom *)room {
    if (room) {
        [self.mutableRooms addObject:room];
    }
}

- (void)removeRoom:(APRoom *)room {
    [self.mutableRooms removeObject:room];
}

- (BOOL)addWorker:(APWorker *)worker {
    APRoom *room = [self freeRoom];
    if (room) {
        return [room addWorker:worker];
    }
    
    return NO;
}

- (void)removeWorker:(APWorker *)worker {
    for (APRoom *room in self.rooms) {
        [room removeWorker:worker];
    }
}

#pragma mark -
#pragma mark Private Methods

- (APRoom *)freeRoom {
    for (APRoom *room in self.rooms) {
        if (!room.isFull) {
            return room;
        }
    }
    
    return nil;
}

@end
