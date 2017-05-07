//
//  APCreatureMale.m
//  APCreature
//
//  Created by Aleksandr Poliakov on 24.04.17.
//  Copyright © 2017 Aleksandr Poliakov. All rights reserved.
//

#import "APCreatureMale.h"
#import "NSObject+APRandomNumbers.h"

static const NSString *APMaleName = @"Abraham";
static const NSRange kAPCreatureRandomNumberRange = {0, 20};

@implementation APCreatureMale

#pragma mark -
#pragma mark Public Methods

- (NSString *)name {
    return [NSString stringWithFormat:@"%@-%li", APMaleName,
            APRandomValueWithRange(kAPCreatureRandomNumberRange)];
}

// полиморфизм, значит - охуенно

- (void)performGenderSpecificOperation {
    [self goToWar];
}

#pragma mark -
#pragma mark Private Methods

- (void)goToWar {
    NSLog(@"You are %@.\nGo fight!", [self name]);
}

@end
