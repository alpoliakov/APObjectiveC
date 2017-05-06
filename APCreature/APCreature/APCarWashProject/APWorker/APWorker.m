//
//  APWorker.m
//  APCreature
//
//  Created by Aleksandr Poliakov on 02.05.17.
//  Copyright © 2017 Aleksandr Poliakov. All rights reserved.
//

#import "APWorker.h"

@implementation APWorker

@synthesize cash = _cash;

#pragma mark -
#pragma mark Initializtions and Deallocations

-(instancetype)init {
    self = [super init];
    
    return self;
};

- (void)processObject:(id<APMoneyTransfer>)object {
    [self receiveCash:object];
}

- (void)receiveCash:(id<APMoneyTransfer>)object {
    self.cash += [object giveAllCash];
}

- (NSUInteger)giveAllCash {
    return [self giveCash:self.cash];
}

- (NSUInteger)giveCash:(NSUInteger)cash {
    NSUInteger cashbox = self.cash;
    self.cash = 0;
    
    return cashbox;
}

@end
