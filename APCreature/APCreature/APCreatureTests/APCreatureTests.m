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

@implementation APCreatureTests

+ (void)performCreatureTests {
    [APCreatureTests performTestByTechAssignment];
}

static const NSUInteger count = 10;
static const NSString *nameMale = @"Abraham";
static const NSString *nameFemale = @"Sandra";

+ (NSString *)nameMaleWithRandomNumber {
    int number;
    number = (arc4random()%30)+1;
    return  [NSString stringWithFormat:@"%@%i", nameMale, number];
}

+ (NSString *)nameFemaleWithRandomNumber {
    int number;
    number = (arc4random()%30)+1;
    return  [NSString stringWithFormat:@"%@%i", nameFemale, number];
}

+(void)performTestByTechAssignment {
    NSLog(@"Performing %@ test\n", NSStringFromSelector(_cmd));
    NSMutableArray *array = [NSMutableArray array];
    for (int i = 0; i < count; i++) {
        APGender gender = arc4random_uniform(2);
        NSString *name = gender == kAPGenderMale ? [APCreatureTests nameMaleWithRandomNumber] :         [APCreatureTests nameFemaleWithRandomNumber];
        APCreature *creature = [APCreature creatureWithGender:gender];
        [array addObject:creature];
        [creature setName:name];
        NSString *nameChaild = gender == kAPGenderMale ? [APCreatureTests nameMaleWithRandomNumber] : [APCreatureTests nameFemaleWithRandomNumber];
        APCreature *child = [creature giveBirthChildWithGender:gender];
        [creature addChild:child];
        [child setName:nameChaild];
}
    
    for (APCreature *creature in array) {
        NSLog(@"\n---------------------------------");
        [creature sayHello];
        (kAPGenderMale == [creature gender]) ? [creature toFight] : [creature toGiveBirth];
        
    }
    NSLog(@"%@", [array objectAtIndex:4]);
    NSLog(@"OK\n");
}

@end
