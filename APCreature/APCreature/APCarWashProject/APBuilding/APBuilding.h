//
//  APBuilding.h
//  APCreature
//
//  Created by Aleksandr Poliakov on 28.04.17.
//  Copyright © 2017 Aleksandr Poliakov. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "APAccountant.h"
#import "APBoss.h"
#import "APRoom.h"

@interface APBuilding : NSObject
@property (nonatomic, retain, readonly) NSArray *rooms;

- (instancetype)initWithRooms:(NSArray *)rooms;

- (void)addRoom:(APBuilding *)room;
- (void)removeRoom:(APBuilding *)room;

- (BOOL)addWorker:(APWorker *)worker;
- (void)removeWorker:(APWorker *)worker;

@end
