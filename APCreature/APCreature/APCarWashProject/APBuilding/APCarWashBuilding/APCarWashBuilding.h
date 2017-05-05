//
//  APCarWashBuilding.h
//  APCreature
//
//  Created by Aleksandr Poliakov on 02.05.17.
//  Copyright © 2017 Aleksandr Poliakov. All rights reserved.
//

#import "APBuilding.h"
#import "APWasher.h"

@class APCarWashRoom;

@interface APCarWashBuilding : APBuilding
@property (nonatomic, copy, readonly) NSArray *washers;

- (void)addWasher:(APWasher *)washer;
- (void)removeWasher:(APWasher *)washer;

@end
