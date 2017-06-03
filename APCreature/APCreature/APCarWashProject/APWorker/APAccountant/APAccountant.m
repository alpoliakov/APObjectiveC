//
//  APAccountant.m
//  APCreature
//
//  Created by Aleksandr Poliakov on 02.05.17.
//  Copyright © 2017 Aleksandr Poliakov. All rights reserved.
//

#import "APAccountant.h"
#import "APWasher.h"

@implementation APAccountant

#pragma mark -
#pragma mark Public Method

- (void)theWorkingProcess:(id)washer {
    [self performWorkWithObject];
}

#pragma mark -
#pragma mark Private Methods

- (void)performWorkWithObject {
    NSLog(@"\nCash is calculated.");
}

@end
