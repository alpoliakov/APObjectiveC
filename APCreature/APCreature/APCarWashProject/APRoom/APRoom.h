//
//  APRooms.h
//  APCreature
//
//  Created by Aleksandr Poliakov on 29.04.17.
//  Copyright © 2017 Aleksandr Poliakov. All rights reserved.
//

#import <Foundation/Foundation.h>
@class APWorker;
@class APBuilding;

@interface APRoom : NSObject
@property (nonatomic, retain, readonly) NSArray *workers;
@property (nonatomic, readonly)         NSUInteger      workersCount;
@property (nonatomic, assign)           APBuilding     *building;
@property (nonatomic, readonly, getter=isFull) BOOL full;

+ (id)room;
+ (id)roomWithCapacity:(NSUInteger)capacity;

- (id)initWithCapacity:(NSUInteger)capacity;

- (BOOL)addWorker:(APRoom *)worker;
- (void)removeWorker:(APRoom *)worker;

@end
