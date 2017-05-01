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

static const NSUInteger count = 10;
static const NSString *nameMale = @"Abraham";
static const NSString *nameFemale = @"Sandra";


@implementation APCreatureTests

+ (void)performCreatureTests {
    [APCreatureTests performTestByTechAssignment];
}

+ (NSString *)nameMaleWithRandomNumber {
    return  [NSString stringWithFormat:@"%@%li", nameMale, APRandomValueRange(APMakeRange(0, 40))];
}

+ (NSString *)nameFemaleWithRandomNumber {
    return  [NSString stringWithFormat:@"%@%li", nameFemale, APRandomValueRange(APMakeRange(0, 40))];
}

+ (void)performTestByTechAssignment {
    NSLog(@"Performing %@ test\n", NSStringFromSelector(_cmd));
    NSMutableArray *array = [NSMutableArray array];
    for (int i = 0; i < count; i++) {
        APGender gender = returnYesOrNo();
        NSString *name = gender == kAPGenderMale ? [APCreatureTests nameMaleWithRandomNumber] :         [APCreatureTests nameFemaleWithRandomNumber];
        APCreature *creature = [APCreature creatureWithGender:gender];
        [array addObject:creature];
        [creature setName:name];
}
    
    for (APCreature *creature in array) {
        NSLog(@"\n------------------------------------");
        [creature sayHello];
        // полиморфизм, значит - охуенно
        [creature performGenderSpecificOperation];
    }
    NSLog(@"OK\n");
}

@end
