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

+ (id)room;

- (instancetype)initWithWorkers:(NSArray *)workers;

- (void)addWorker:(APRoom *)worker;
- (void)removeWorker:(APRoom *)worker;

@end
