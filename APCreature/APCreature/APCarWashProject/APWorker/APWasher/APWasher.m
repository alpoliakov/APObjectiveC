//
//  APWosher.m
//  APCreature
//
//  Created by Aleksandr Poliakov on 02.05.17.
//  Copyright © 2017 Aleksandr Poliakov. All rights reserved.
//

#import "APWasher.h"

@interface APWasher ()

- (void)cleanCar:(APCar *)car;

@end

@implementation APWosher

#pragma mark -
#pragma mark Public Methods

- (void)processObject:(APCar *)car {
    [self cleanCar:car];
    [self receiveCash:car];
}

#pragma mark -
#pragma mark Private Methods

- (void)cleanCar:(APCar *)car {
    car.isDirty = NO;
    NSLog(@"Car is washed");
}

@end
