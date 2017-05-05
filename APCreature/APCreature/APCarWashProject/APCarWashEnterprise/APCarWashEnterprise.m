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

@interface APCarWashEnterprise ()

@property (nonatomic, retain) APBuilding *productionBuilding;
@property (nonatomic, retain) NSMutableArray *washers;

@end

@implementation APCarWashEnterprise

@end
