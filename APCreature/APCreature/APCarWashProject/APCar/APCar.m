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
@synthesize payment = _payment;

#pragma mark -
#pragma mark Initializtions and Deallocations

- (void)dealloc {
    self.mutableCarsMark = nil;
    
    [super dealloc];
}

- (instancetype)init {
    self = [super init];
    
    self.payment = APPaid;
    self.cash = APCash;
    self.isDirty = kAPDirty;
    
    return self;
}

#pragma mark -
#pragma mark Public Methods

- (NSUInteger)giveAllCash {
    return [self giveCash:self.payment];
}

- (NSUInteger)giveCash:(NSUInteger)cash {
    if (APCash > APPaid) {
        NSUInteger chargeForCleaning = self.payment;
        self.cash = APCash - chargeForCleaning;
        return chargeForCleaning;
    }
}

@end
