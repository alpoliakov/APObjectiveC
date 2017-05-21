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
#import "APQueue.h"

#import "NSObject+APRandomNumbers.h"
#import "NSObject+APObject.h"
#import "NSArray+APExtention.h"

static const NSUInteger APProdRoomCapacity = 2;
static const NSUInteger APAdminRoomCapacity = 3;
static NSString *const APOutputDelimiter = @"\n-------------------------------";

@interface APCarWashEnterprise ()

@property (nonatomic, retain)                           APBuilding        *productionBuilding;
@property (nonatomic, retain)                           APBuilding        *administrativeBuilding;
@property (nonatomic, retain)                           NSMutableArray    *washers;
@property (nonatomic, retain)                           NSMutableArray    *accountants;
@property (nonatomic, retain)                           NSMutableArray    *directors;
@property (nonatomic, retain)                           APQueue           *carsQueue;

- (void)prepareCarWashStructure;

- (APWasher *)freeWasher;
- (APAccountant *)freeAccountant;
- (APBoss *)freeBoss;

- (void)addWasher:(APWasher *)washer;
- (void)removeWasher:(APWasher *)washer;

- (void)addAccountant:(APAccountant *)accountant;
- (void)removeAccountant:(APAccountant *)accountant;

- (void)addBoss:(APBoss *)boss;
- (void)removeBoss:(APBoss *)boss;

- (BOOL)addWorker:(APWorker *)worker toArray:(NSMutableArray *)array building:(APBuilding *)building;
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
    self.carsQueue = nil;
    
    [super dealloc];
}

- (id)init {
    self = [super init];
    self.carsQueue = [APQueue object];
    self.accountants = [NSMutableArray object];
    self.washers = [NSMutableArray object];
    self.directors = [NSMutableArray object];
    
    [self prepareCarWashStructure];
    
    return self;
}

#pragma mark -
#pragma mark Accessors Methods

- (void)prepareCarWashStructure {
    APBuilding *productionBuilding = [APCarWashBuilding object];
    [productionBuilding addRoom:[APCarWashRoom roomWithCapacity:APProdRoomCapacity]];
    self.productionBuilding = productionBuilding;
    [self addWasher:[APWasher object]];
    
    APBuilding *administrativeBuilding = [APBuilding object];
    [administrativeBuilding addRoom:[APRoom roomWithCapacity:APAdminRoomCapacity]];
    self.administrativeBuilding = administrativeBuilding;
    [self addAccountant:[APAccountant object]];
    [self addBoss:[APBoss object]];
}

#pragma mark -
#pragma mark Public Methods

- (void)processFormingQueueCars:(APCar *)car {
    [self.carsQueue enqueue:car];
}

- (void)processOfCarProcessing {
    while (self.carsQueue.empty) {
        APCar *currentCar = [self.carsQueue dequeue];
        
        if (!currentCar) {
            return;
        }
        
        APWasher *washer = [self freeWasher];
        [washer processObject:currentCar];
        
        APAccountant *accountant = [self freeAccountant];
        [accountant processObject:washer];
        
        APBoss *boss = [self freeBoss];
        [boss processObject:accountant];
        
        NSLog(@"\nCar was processed.");
        NSLog(APOutputDelimiter);
    }
}

#pragma mark -
#pragma mark Private Methods

- (APWasher *)freeWasher {
    return [self.washers randomObject];
}

- (APAccountant *)freeAccountant {
    return [self.accountants randomObject];
}

- (APBoss *)freeBoss {
    return [self.directors randomObject];
}

- (void)addWasher:(APWasher *)washer {
    if (washer) {
        [self addWorker:washer toArray:self.washers building:self.productionBuilding];
    }
}

- (void)removeWasher:(APWasher *)washer {
    [self removeWorker:washer];
}

- (void)addAccountant:(APAccountant *)accountant {
    if ([self.accountants count]) {
        return;
    }
    [self addWorker:accountant toArray:self.accountants building:self.administrativeBuilding];
}

- (void)removeAccountant:(APAccountant *)accountant {
    [self removeWorker:accountant];
}

- (void)addBoss:(APBoss *)boss {
    if ([self.directors count]) {
        return;
    }
    [self addWorker:boss toArray:self.directors building:self.administrativeBuilding];
}

- (void)removeBoss:(APBoss *)boss {
    [self removeWorker:boss];
}

- (BOOL)addWorker:(APWorker *)worker toArray:(NSMutableArray *)array building:(APBuilding *)building {
    if ([building addWorker:worker]) {
        [array addObject:worker];
    }
    
    return NO;
}

- (void)removeWorker:(APWorker *)worker {
    if (worker) {
        [self.productionBuilding removeWorker:worker];
        [self.administrativeBuilding removeWorker:worker];
        
        [self.directors removeObject:worker];
        [self.washers removeObject:worker];
        [self.accountants removeObject:worker];
    }
}

- (void)removeWorkersInArray:(NSMutableArray *)workers {
    for (APWorker *worker in workers) {
        [self removeWorker:worker];
    }
}

@end
