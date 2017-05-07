//
//  APBuilding.m
//  APCreature
//
//  Created by Aleksandr Poliakov on 28.04.17.
//  Copyright © 2017 Aleksandr Poliakov. All rights reserved.
//

#import "APBuilding.h"
#import "APRoom.h"

@interface APBuilding ()
@property (nonatomic, retain) NSMutableArray *mutableRooms;

@end

@implementation APBuilding

@dynamic rooms;

#pragma mark-
#pragma mark Initializatinos and Deallocations

- (void)dealloc {
    self.mutableRooms = nil;
    
    [super dealloc];
}

- (instancetype)initWithRooms:(NSArray *)rooms {
    self = [super init];
    self.mutableRooms = [NSMutableArray array];
    
    return self;
}

#pragma mark-
#pragma mark Accessors

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

@end
