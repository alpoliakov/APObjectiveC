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
#pragma mark Public Method

- (void)theWorkingProcess:(id)object {
    self.state = APCarClear;
    [self performWorkWithObject];
}

#pragma mark -
#pragma mark Private Methods

- (void)performWorkWithObject {
    NSLog(@"\nCar is washed.");
}

@end
