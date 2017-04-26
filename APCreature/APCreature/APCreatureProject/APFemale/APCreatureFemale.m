//
//  APCreatureFemale.m
//  APCreature
//
//  Created by Aleksandr Poliakov on 24.04.17.
//  Copyright © 2017 Aleksandr Poliakov. All rights reserved.
//

#import "APCreatureFemale.h"
//#import "APCreatureTests.h"

@interface APCreatureFemale ()

-(APCreature *)toGiveBirth;

@end

@implementation APCreatureFemale

#pragma mark -
#pragma mark Public Methods

// полиморфизм, значит - охуенно

- (void)performGenderSpecificOperation {
    [self toGiveBirth];
}

#pragma mark -
#pragma mark Private Methods

- (APCreature *)toGiveBirth {
    NSLog(@"I'm going to give birth!");
    APGender genderChild = (arc4random_uniform(2)) ? kAPGenderMale : kAPGenderFemale;
    APCreature *child = [APCreatureFemale creatureWithGender:genderChild];
    [self addChild:child];
    
    return child;
}

@end
