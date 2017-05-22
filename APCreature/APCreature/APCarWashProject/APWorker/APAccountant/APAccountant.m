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
#pragma mark Public Methods

- (void)processObject:(APWasher *)washer {
    self.state = APWorkerIsBusy;
    [self performWorkWithObject:washer];
    [super takeCashFromObject:washer];
    self.state = APWorkerIsFree;
}

#pragma mark -
#pragma mark Private Methods

- (void)performWorkWithObject:(APWasher *)washer {
    NSLog(@"Cash is calculated.");
}

@end
