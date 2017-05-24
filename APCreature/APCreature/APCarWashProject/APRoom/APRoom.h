//
//  APRooms.h
//  APCreature
//
//  Created by Aleksandr Poliakov on 29.04.17.
//  Copyright © 2017 Aleksandr Poliakov. All rights reserved.
//

#import <Foundation/Foundation.h>
@class APWorker;

@interface APRoom : NSObject
@property (nonatomic, readonly)                 NSArray         *workers;
@property (nonatomic, readonly)                 NSUInteger      workersCount;
@property (nonatomic, readonly)                 BOOL            full;

+ (id)room;
+ (id)roomWithCapacity:(NSUInteger)capacity;

- (id)initWithCapacity:(NSUInteger)capacity NS_DESIGNATED_INITIALIZER;

- (void)addWorker:(APWorker *)worker;
- (void)removeWorker:(APWorker *)worker;
- (id)employeesWithClass:(Class)cls;

@end
