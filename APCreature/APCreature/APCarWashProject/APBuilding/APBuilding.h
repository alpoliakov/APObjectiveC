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
@property (nonatomic, readonly) NSArray *rooms;

- (void)addRoom:(APRoom *)room;
- (void)removeRoom:(APRoom *)room;

- (id)employeesWithClass:(Class)cls;

@end
