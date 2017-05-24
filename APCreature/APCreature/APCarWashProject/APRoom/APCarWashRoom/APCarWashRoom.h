//
//  APCarWashRoom.h
//  APCreature
//
//  Created by Aleksandr Poliakov on 02.05.17.
//  Copyright © 2017 Aleksandr Poliakov. All rights reserved.
//

#import "APRoom.h"
#import "APCar.h"

@interface APCarWashRoom : APRoom
@property (nonatomic, copy, readonly) NSArray *cars;

- (instancetype)initWithCarCapacity:(NSUInteger)capacity;

- (void)addCar:(APCar *)car;
- (void)removeCar:(APCar *)car;

@end
