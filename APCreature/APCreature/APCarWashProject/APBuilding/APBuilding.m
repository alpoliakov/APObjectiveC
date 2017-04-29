//
//  APBuilding.m
//  APCreature
//
//  Created by Aleksandr Poliakov on 28.04.17.
//  Copyright © 2017 Aleksandr Poliakov. All rights reserved.
//

#import "APBuilding.h"

@interface APBuilding ()
@property (nonatomic, retain) NSMutableArray *mutableRooms;

@end

@implementation APBuilding

@dynamic rooms;

#pragma mark-
#pragma mark Initializatinos and Deallocations

-(void)dealloc {
    self.mutableRooms = nil;
    
    [super dealloc];
}

- (instancetype)initWithRooms:(NSArray *)rooms andType:(APType *)type {
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

- (void)addRoom:(APBuilding *)room {
    [self.mutableRooms addObject:room];
}

- (void)removeRoom:(APBuilding *)room {
    [self.mutableRooms removeObject:room];
}

@end
