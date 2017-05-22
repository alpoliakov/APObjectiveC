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
#import "APRoom.h"
#import "APCarWashRoom.h"
#import "APWorker.h"
#import "APWasher.h"
#import "APAccountant.h"
#import "APBoss.h"
#import "APQueue.h"

#import "NSObject+APRandomNumbers.h"
#import "NSObject+APObject.h"
#import "NSArray+APExtensions.h"

static const NSUInteger APProdRoomCapacity = 2;
static const NSUInteger APAdminRoomCapacity = 3;
static NSString *const APOutputDelimiter = @"\n-------------------------------";

@interface APCarWashEnterprise ()

@property (nonatomic, retain)                           APBuilding        *productionBuilding;
@property (nonatomic, retain)                           APBuilding        *administrativeBuilding;
@property (nonatomic, retain)                           APQueue           *carsQueue;

//- (APWorker *)freeEmployeeFromArray:(NSArray *)employes;
- (void)prepareCarWashStructure;
- (id)freeEmployeeWithClass:(Class)class;
- (id)employeesWithClass:(Class)cls;

@end

@implementation APCarWashEnterprise

#pragma mark -
#pragma mark Initializtions and Deallocations

- (void)dealloc {
    self.productionBuilding = nil;
    self.administrativeBuilding = nil;
    self.carsQueue = nil;
    
    [super dealloc];
}

- (id)init {
    self = [super init];
    self.carsQueue = [APQueue object];
    [self prepareCarWashStructure];
    
    return self;
}

#pragma mark -
#pragma mark Accessors Methods

- (void)prepareCarWashStructure {
    APBuilding *productionBuilding = [APBuilding object];
    self.productionBuilding = productionBuilding;
    APRoom *roomInProductionBuilding = [APRoom roomWithCapacity:APProdRoomCapacity];
    [productionBuilding addRoom:roomInProductionBuilding];
    [roomInProductionBuilding addWorker:[APWasher object]];
    [roomInProductionBuilding addWorker:[APWasher object]];
    
    APBuilding *administrativeBuilding = [APBuilding object];
    self.administrativeBuilding = administrativeBuilding;
    APRoom *room = [APRoom roomWithCapacity:APAdminRoomCapacity];
    [administrativeBuilding addRoom:room];
    [room addWorker:[APAccountant object]];
    [room addWorker:[APBoss object]];
}

#pragma mark -
#pragma mark Private Methods

- (id)freeEmployeeWithClass:(Class)class {
    return [[[self employeesWithClass:class] filteredArrayWithBlock:^BOOL(APWorker *worker){
        return worker.state == APWorkerIsFree;}] firstObject];
}

- (id)employeesWithClass:(Class)cls {
    NSArray *buildings = @[self.productionBuilding, self.administrativeBuilding];
    NSMutableArray *employees = [NSMutableArray array];
    for (APBuilding *building in buildings) {
        [employees addObjectsFromArray:[building employeesWithClass:cls]];
    }
    
    return [[employees copy] autorelease];
}

#pragma mark -
#pragma mark Public Methods

- (void)processWash:(APCar *)car cars:(NSUInteger)numberCars{
    APQueue *queue = self.carsQueue;
    for (NSUInteger index = 0; index <= numberCars; ++index) {
        NSLog(@"\nCar %lu adds to queue.", (unsigned long)index);
        [queue enqueue:car];
        NSLog(APOutputDelimiter);
    }
    
    while (queue.empty) {
        APCar *car = [queue dequeue];
        if (!car) {
            return;
        }
        
        APWasher *washer = [self freeEmployeeWithClass:[APWasher class]];
        APAccountant *accountant = [self freeEmployeeWithClass:[APAccountant class]];
        APBoss *boss = [self freeEmployeeWithClass:[APBoss class]];
        
        [washer processObject:car];
        [accountant processObject:washer];
        [boss processObject:accountant];
        
        NSLog(@"\nCar was processed.");
        NSLog(APOutputDelimiter);
    }
}

@end
