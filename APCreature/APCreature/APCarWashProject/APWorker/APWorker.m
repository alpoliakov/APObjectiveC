//
//  APWorker.m
//  APCreature
//
//  Created by Aleksandr Poliakov on 02.05.17.
//  Copyright © 2017 Aleksandr Poliakov. All rights reserved.
//

#import "APWorker.h"

@interface APWorker ()
@property (nonatomic, assign) NSUInteger cash;

@end

@implementation APWorker

#pragma mark -
#pragma mark Initializtions and Deallocations

- (instancetype)init {
    self = [super init];
    
    return self;
};

#pragma mark -
#pragma mark Public Methods

- (void)processObject:(id<APMoneyTransfer>)object {
    [self receiveCashFromCashOwner:object];
}

- (void)receiveCashFromCashOwner:(id<APMoneyTransfer>)object {
    [self receiveCash:[object giveAllCash]];
}

- (void)receiveCash:(NSUInteger)cash {
    self.cash += cash;
}

- (NSUInteger)giveAllCash {
    return [self giveCash:self.cash];
}

- (NSUInteger)giveCash:(NSUInteger)cash {
    NSUInteger cashOwned = self.cash;
    NSUInteger cashToGive = cashOwned > cash ? cash : cashOwned;
    self.cash = cashOwned - cashToGive;
    
    return cashToGive;
}

@end
