//
//  APAccountant.m
//  APCreature
//
//  Created by Aleksandr Poliakov on 02.05.17.
//  Copyright © 2017 Aleksandr Poliakov. All rights reserved.
//

#import "APAccountant.h"
#import "APWosher.h"

@interface APAccountant ()

- (void)calculateProfit;

@end

@implementation APAccountant

#pragma mark -
#pragma mark Public Methods

- (void)processObject:(APWosher *)washer {
    [self calculateProfit];
    [super receiveCash:washer];
}

#pragma mark -
#pragma mark Private Methods

- (void)calculateProfit {
    NSLog(@"Cash is calculated");
}

@end
