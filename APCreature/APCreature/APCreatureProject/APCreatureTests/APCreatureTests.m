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
//static const NSString *APMaleName = @"Abraham";
//static const NSString *APFemaleName = @"Sandra";
//static const NSRange kAPRandomNumberFrom = {0, 40};


@implementation APCreatureTests

+ (void)APPerformCreatureTests {
    [APCreatureTests APPerformTestByTechAssignment];
}

+ (void)APPerformTestByTechAssignment {
    NSLog(@"Performing %@ test\n", NSStringFromSelector(_cmd));
    NSMutableArray *array = [NSMutableArray array];
    for (int i = 0; i < APCount; i++) {
        APGender gender = APRandomBool();
        Class APcreatureClass = gender ? [APCreatureFemale class] : [APCreatureMale class];
        APCreature *creature = [APcreatureClass object];
        [array addObject:creature];
    }
    
    for (APCreature *creature in array) {
        NSLog(@"\n------------------------------------");
        //[creature sayHello];
        // полиморфизм, значит - охуенно
        [creature performGenderSpecificOperation];
    }
    NSLog(@"OK\n");
}

@end
