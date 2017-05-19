//
//  APCarWashRoom.m
//  APCreature
//
//  Created by Aleksandr Poliakov on 02.05.17.
//  Copyright © 2017 Aleksandr Poliakov. All rights reserved.
//

#import "APCarWashRoom.h"
#import "NSObject+APObject.h"

@interface APCarWashRoom ()
@property (nonatomic, retain) NSMutableArray *mutableCars;

@end

@implementation APCarWashRoom

@dynamic cars;

#pragma mark -
#pragma mark Initializtions and Deallocations

- (void)dealloc {
    self.mutableCars = nil;
    
    [super dealloc];
}

- (instancetype)initWithCapacity:(NSUInteger)capacity {
    self = [super initWithCapacity:(NSUInteger)capacity];
    self.mutableCars = [NSMutableArray object];
    
    return self;
}

#pragma mark -
#pragma mark Accessors Methods

- (NSArray *)cars {
    return [[self.mutableCars copy] autorelease];
}

#pragma mark -
#pragma mark Public Methods

- (void)addCar:(APCar *)car {
    if (car) {
        [self.mutableCars addObject:car];
    }
}

- (void)removeCar:(APCar *)car {
    [self.mutableCars removeObject:car];
}

@end
