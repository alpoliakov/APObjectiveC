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
@property (nonatomic, retain) NSMutableArray *mutableCarsMark;

@end

@implementation APCar

@synthesize cash = _cash;

#pragma mark -
#pragma mark Initializtions and Deallocations

- (void)dealloc {
    self.mutableCarsMark = nil;
    
    [super dealloc];
}

- (instancetype)init {
    self = [super init];
    
    self.cash = APCash;
    self.isDirty = kAPDirty;
    
    return self;
}

#pragma mark -
#pragma mark Public Methods

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
