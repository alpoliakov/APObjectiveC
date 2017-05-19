//
//  APWosher.m
//  APCreature
//
//  Created by Aleksandr Poliakov on 02.05.17.
//  Copyright © 2017 Aleksandr Poliakov. All rights reserved.
//

#import "APWasher.h"
#import "APCar.h"
#import "APAccountant.h"

@implementation APWasher

#pragma mark -
#pragma mark Public Methods

- (void)processObject:(APCar *)car {
    [self receiveCashFromCashOwner:car];
    [self performWorkWithObject:car];
}

#pragma mark -
#pragma mark Private Methods

- (void)performWorkWithObject:(APCar *)car {
    car.state = APCarClear;
    NSLog(@"\nCar is washed.");
}

@end
