//
//  APBoss.m
//  APCreature
//
//  Created by Aleksandr Poliakov on 02.05.17.
//  Copyright © 2017 Aleksandr Poliakov. All rights reserved.
//

#import "APBoss.h"
#import "APAccountant.h"

@implementation APBoss

#pragma mark -
#pragma mark Public Methods

- (void)processObject:(APBoss *)boss {
    [self performWorkWithObject:boss];
    [super receiveCashFromCashOwner:boss];
}

#pragma mark -
#pragma mark Private Methods

- (void) performWorkWithObject:(APBoss *)boss {
    NSLog(@"Profit is make, %lu", self.cash);
}

@end
