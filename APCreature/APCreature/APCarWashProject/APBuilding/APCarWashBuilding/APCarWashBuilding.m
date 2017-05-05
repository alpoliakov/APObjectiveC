//
//  APCarWashBuilding.m
//  APCreature
//
//  Created by Aleksandr Poliakov on 02.05.17.
//  Copyright © 2017 Aleksandr Poliakov. All rights reserved.
//

#import "APCarWashBuilding.h"
#import "APCarWashRoom.h"

@interface APCarWashBuilding ()
@property (nonatomic, retain) NSMutableArray *mutableWashers;

@end

@implementation APCarWashBuilding

@dynamic washers;

#pragma mark -
#pragma mark Initializtions and Deallocations

- (void)dealloc {
    self.mutableWashers = nil;
    
    [super dealloc];
}

- (instancetype)init {
    self = [super init];
    self.mutableWashers = [NSMutableArray array];
    
    return self;
}

#pragma mark -
#pragma mark Accessors Methods

- (NSArray *)cars {
    return [[self.mutableWashers copy] autorelease];
}

#pragma mark -
#pragma mark Public Methods

- (void)addWasher:(APWasher *)washer {
    if (washer) {
        [self.mutableWashers addObject:washer];
    }
}

- (void)removeWasher:(APWasher *)washer {
    [self.mutableWashers removeObject:washer];
}

@end
