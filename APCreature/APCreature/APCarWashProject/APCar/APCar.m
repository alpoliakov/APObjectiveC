//
//  APCar.m
//  APCreature
//
//  Created by Aleksandr Poliakov on 02.05.17.
//  Copyright © 2017 Aleksandr Poliakov. All rights reserved.
//

#import "APCar.h"

static const NSUInteger APCash = 100;

@interface APCar ()
@property (nonatomic, assign) NSUInteger cash;

@end

@implementation APCar

#pragma mark -
#pragma mark Initializtions and Deallocations

- (instancetype)init {
    self = [super init];
    if (self) {
        self.cash = APCash;
        self.state = APCarDirty;
    }
    
    return self;
}

#pragma mark -
#pragma mark Public Methods

- (void)takeCashFromObject:(id<APMoneyTransfer>)object {
    [self receiveCash:[object giveAllCash]];
}

- (void)receiveCash:(NSUInteger)cash {
    self.cash += cash;
}

- (NSUInteger)giveAllCash {
    return self.cash;
}

- (NSUInteger)giveCash:(NSUInteger)cash {
    NSUInteger cashOwned = self.cash;
    NSUInteger cashToGive = cashOwned > cash ? cash : cashOwned;
    self.cash = cashOwned - cashToGive;
    
    return cashToGive;
}

@end
