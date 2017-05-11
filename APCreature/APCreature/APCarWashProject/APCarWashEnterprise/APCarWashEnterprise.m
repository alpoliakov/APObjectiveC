//
//  APCarWashEnterprise.m
//  APCreature
//
//  Created by Aleksandr Poliakov on 05.05.17.
//  Copyright © 2017 Aleksandr Poliakov. All rights reserved.
//

#import "APCarWashEnterprise.h"

#import "APCar.h"
#import "APBuilding.h"
#import "APCarWashBuilding.h"
#import "APRoom.h"
#import "APCarWashRoom.h"
#import "APWorker.h"
#import "APWasher.h"
#import "APAccountant.h"
#import "APBoss.h"

#import "NSObject+APRandomNumbers.h"
#import "NSObject+APObject.h"
#import "NSArray+APArray.h"

@interface APCarWashEnterprise ()

@property (nonatomic, retain) APBuilding *productionBuilding;
@property (nonatomic, retain) APBuilding *administrativeBuilding;
@property (nonatomic, retain) NSMutableArray *washers;
@property (nonatomic, retain) NSMutableArray *accountants;
@property (nonatomic, retain) NSMutableArray *directors;


- (void)initCarWashStructure;

- (void)addWasher:(APWasher *)washer;
- (void)removeWasher:(APWasher *)washer;

- (void)addAccountant:(APAccountant *)accountant;
- (void)removeAccountant:(APAccountant *)accountant;

- (void)addBoss:(APBoss *)boss;
- (void)removeBoss:(APBoss *)boss;

- (void)addWorker:(APWorker *)worker toArray:(NSMutableArray *)array building:(APBuilding *)building;
- (void)removeWorker:(APWorker *)worker;
- (void)removeWorkersInArray:(NSMutableArray *)workers;

@end

@implementation APCarWashEnterprise

#pragma mark -
#pragma mark Initializtions and Deallocations

- (void)dealloc {
    self.productionBuilding = nil;
    self.administrativeBuilding = nil;
    self.washers = nil;
    self.accountants = nil;
    self.directors = nil;
    
    [super dealloc];
}

- (id)init {
    self = [super init];
    self.accountants = [NSMutableArray object];
    self.washers = [NSMutableArray object];
    self.directors = [NSMutableArray object];
    
    [self initCarWashStructure];
    
    return self;
}

- (void)initCarWashStructure {
    NSMutableArray *rooms = [NSMutableArray array];
    //NSMutableArray *workers = [NSMutableArray array];
    APBuilding *productionBuilding = [[[APBuilding alloc] initWithRooms:rooms] autorelease];
    [rooms addObject:[[[APCarWashRoom alloc] initWithWorkers:self.washers] autorelease]];
    [[self washers] addObject:[APWasher object]];
    NSLog(@"%lu", (unsigned long)self.washers.count);
    
    self.productionBuilding = productionBuilding;
    
    APBuilding *administrativeBuilding = [APBuilding object];
    [administrativeBuilding addRoom:[APRoom room]];
//    [workers addObject:[APAccountant object]];
    self.administrativeBuilding = administrativeBuilding;
//    [self addAccountant:[APAccountant object]];
//    [self addBoss:[APBoss object]];
}

#pragma mark -
#pragma mark Private Methods

@end
