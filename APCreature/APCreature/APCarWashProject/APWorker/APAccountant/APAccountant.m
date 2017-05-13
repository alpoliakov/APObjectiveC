//
//  APAccountant.m
//  APCreature
//
//  Created by Aleksandr Poliakov on 02.05.17.
//  Copyright © 2017 Aleksandr Poliakov. All rights reserved.
//

#import "APAccountant.h"
#import "APWasher.h"

@interface APAccountant ()

- (void)calculateProfit;

@end

@implementation APAccountant

#pragma mark -
#pragma mark Public Methods

- (void)processObject:(APWasher *)washer {
    [self calculateProfit];
    [super receiveCashFromCashOwner:washer];
}

#pragma mark -
#pragma mark Private Methods

- (void)calculateProfit {
    NSLog(@"Cash is calculated.");
}

@end
