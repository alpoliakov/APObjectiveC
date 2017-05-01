//
//  APCreatureFemale.m
//  APCreature
//
//  Created by Aleksandr Poliakov on 24.04.17.
//  Copyright © 2017 Aleksandr Poliakov. All rights reserved.
//

#import "APCreatureFemale.h"
//#import "APCreatureTests.h"
#import "NSObject+APRandomNumbers.h"
#import "APCreatureMale.h"
#import "NSObject+APObject.h"

static const NSString *APFemaleName = @"Sandra";
static const NSRange kAPRandomNumberFrom = {0, 20};

@implementation APCreatureFemale

#pragma mark -
#pragma mark Public Methods

// полиморфизм, значит - охуенно

- (void)performGenderSpecificOperation {
    [self toGiveBirth];
}

- (NSString *)name {
    return [NSString stringWithFormat:@"%@-%li", APFemaleName, APRandomValueRange(kAPRandomNumberFrom)];
}

#pragma mark -
#pragma mark Private Methods

- (APCreature *)toGiveBirth {
    NSLog(@"You are %@. Go give birth to children!", [self name]);
    APGender APCreatureChild = APRandomBool();
    APCreature *child = APCreatureChild ? [APCreatureMale object] : [APCreatureFemale object];
    [self addChild:child];
    
    return child;
}

@end
