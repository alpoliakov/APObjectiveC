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

@implementation APWasher

#pragma mark -
#pragma mark Public Methods

- (void)processObject:(APCar *)car {
    [self cleanCar:car];
    [self receiveCashFromCashOwner:car];
}

#pragma mark -
#pragma mark Private Methods

- (void)cleanCar:(APCar *)car {
    car.isDirty = kAPClear;
    NSLog(@"Car is washed");
}

@end
