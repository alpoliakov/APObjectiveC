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

static const NSUInteger APCount = 10;

@implementation APCreatureTests

+ (void)APPerformCreatureTests {
    NSLog(@"Performing %@ test\n", NSStringFromSelector(_cmd));
    NSMutableArray *creatures = [NSMutableArray array];
    for (int i = 0; i < APCount; i++) {
        Class APCreatureClass = APRandomBool() ? [APCreatureFemale class] : [APCreatureMale class];
        APCreature *creature = [APCreatureClass object];
        [creatures addObject:creature];
    }
    
    for (APCreature *creature in creatures) {
        NSLog(@"\n------------------------------------");
        // полиморфизм, значит - охуенно
        [creature performGenderSpecificOperation];
    }
    NSLog(@"OK\n");
}

@end
