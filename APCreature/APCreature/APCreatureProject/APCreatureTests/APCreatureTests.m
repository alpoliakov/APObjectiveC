//
//  APCreatureTests.m
//  APCreature
//
//  Created by Aleksandr Poliakov on 21.04.17.
//  Copyright © 2017 Aleksandr Poliakov. All rights reserved.
//

#import "APCreatureTests.h"
#import "APCreature.h"
#import "APCreatureMale.h"
#import "APCreatureFemale.h"

#import "NSObject+APRandomNumbers.h"
#import "NSObject+APObject.h"
#import "NSArray+APExtensions.h"

static const NSUInteger APPeopleCount = 10;

@implementation APCreatureTests

+ (void)APPerformCreatureTests {
    NSLog(@"Performing %@ test\n", NSStringFromSelector(_cmd));
    NSArray *creatures = [NSArray objectsWithCount:APPeopleCount block:^{
        Class creatureClass = APRandomBool() ? [APCreatureFemale class] : [APCreatureMale class];
        
        return [creatureClass object];
    }];
    
    for (APCreature *creature in creatures) {
        NSLog(@"\n------------------------------------");
        [creature sayHello];
        // полиморфизм, значит - охуенно
        [creature performGenderSpecificOperation];
    }
    NSLog(@"OK\n");
}

@end
