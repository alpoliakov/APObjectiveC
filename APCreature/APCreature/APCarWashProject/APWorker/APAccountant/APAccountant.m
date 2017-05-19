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

- (void)processObject:(APAccountant *)accountant {
    [self performWorkWithObject:accountant];
    [super receiveCashFromCashOwner:accountant];
}

#pragma mark -
#pragma mark Private Methods

- (void)performWorkWithObject:(APAccountant *)accountant {
    NSLog(@"Cash is calculated.");
}

@end
