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
static const NSRange kAPRandomNumberFrom = {0, 20};

@implementation APCreatureMale

#pragma mark -
#pragma mark Public Methods

- (NSString *)name {
    return [NSString stringWithFormat:@"%@-%li", APMaleName, APRandomValueRange(kAPRandomNumberFrom)];
}

// полиморфизм, значит - охуенно

- (void)performGenderSpecificOperation {
    [self toGoWar];
}

#pragma mark -
#pragma mark Private Methods

- (APCreature *)toGoWar {
    NSLog(@"You are %@.\nGo fight!", [self name]);
    
    return nil;
}


@end
