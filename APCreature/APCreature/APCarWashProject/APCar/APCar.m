//
//  APCar.m
//  APCreature
//
//  Created by Aleksandr Poliakov on 02.05.17.
//  Copyright © 2017 Aleksandr Poliakov. All rights reserved.
//

#import "APCar.h"

static const NSUInteger APCash = 1000;
static const NSUInteger APPaid = 20;

@interface APCar ()
@property (nonatomic, retain) NSMutableArray *mutableCarsMark;

@end

@implementation APCar

@synthesize cash = _cash;
@synthesize paid = _paid;

#pragma mark -
#pragma mark Initializtions and Deallocations

- (void)dealloc {
    self.mutableCarsMark = nil;
    
    [super dealloc];
}

- (instancetype)init {
    self = [super init];
    
    self.paid = APPaid;
    self.cash = APCash;
    self.isDirty = YES;
    
    return self;
}

#pragma mark -
#pragma mark Public Methods

- (void)receiveCash:(id<APMoneyTransfer>)object {
    return;
}

- (NSUInteger)giveAllCash {
    return [self giveCash:self.paid];
}

- (NSUInteger)giveCash:(NSUInteger)cash {
    if (APCash > APPaid) {
        NSUInteger paidForWash = self.paid;
        self.cash = APCash - paidForWash;
        return paidForWash;
    }
}

@end
