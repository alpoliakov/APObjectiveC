//
//  APWosher.m
//  APCreature
//
//  Created by Aleksandr Poliakov on 02.05.17.
//  Copyright © 2017 Aleksandr Poliakov. All rights reserved.
//

#import "APWasher.h"
#import "APCar.h"

@implementation APWasher

#pragma mark -
#pragma mark Private Methods

- (void)performWorkWithObject:(APCar *)car {
    car.state = APCarClear;
    NSLog(@"\nCar is washed.");
}

@end
