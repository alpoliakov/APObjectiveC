//
//  APBoss.m
//  APCreature
//
//  Created by Aleksandr Poliakov on 02.05.17.
//  Copyright © 2017 Aleksandr Poliakov. All rights reserved.
//

#import "APBoss.h"
#import "APAccountant.h"

@interface APBoss ()

- (void)makeProfit;

@end

@implementation APBoss

#pragma mark -
#pragma mark Public Methods

- (void)processObject:(APAccountant *)accountant {
    [self makeProfit];
    [super receiveCash:accountant];
}

#pragma mark -
#pragma mark Private Methods

- (void)makeProfit {
    NSLog(@"Profit is make, %lu", (unsigned long)self.cash);
}

@end
