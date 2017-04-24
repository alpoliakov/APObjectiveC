//
//  APCreatureTests.m
//  APCreature
//
//  Created by Aleksandr Poliakov on 21.04.17.
//  Copyright © 2017 Aleksandr Poliakov. All rights reserved.
//

#import "APCreatureTests.h"
#import "APCreature.h"

@implementation APCreatureTests

+ (void)performCreatureTests {
    [APCreatureTests performTestByTechAssignment];
    [APCreatureTests generateRandomNumber];
}

static const NSUInteger count = 10;

+(void)performTestByTechAssignment {
    NSLog(@"Performing %@ test\n", NSStringFromSelector(_cmd));
    
    NSMutableArray *array = [NSMutableArray array];
    for (int i = 0; i < count; i++) {
        NSString *maleName = [NSString stringWithFormat:@"Illon%i", i];
        NSString *femaleName = [NSString stringWithFormat:@"Angela%i", i];
        APGender gender = arc4random_uniform(2);
        NSString *name = gender == kAPGenderMale ? maleName : femaleName;
        APCreature *creature = [APCreature creatureWithGender:gender];
        [creature setName:name];
        NSString *maleChaild = [NSString stringWithFormat:@"David%i", i];
        NSString *femaleChaild = [NSString stringWithFormat:@"Sandra%i", i];
        NSString *nameChaild = gender == kAPGenderMale ? maleChaild : femaleChaild;
        APCreature *child = [creature giveBirthChildWithGender:gender];
        [array addObject:creature];
        [array addObject:child];
        [creature addChild:child];
        [child setName:nameChaild];
}
    
    for (APCreature *creature in array) {
        NSLog(@"\n---------------------------------");
        [creature sayHello];
        (kAPGenderMale == [creature gender]) ? [creature toFight] : [creature toGiveBirth];
    }
    NSLog(@"OK\n");
}

+(void)generateRandomNumber {
    int number;
    number = (arc4random()%20)+1;
    NSString *string = [NSString stringWithFormat:@"%i", number];
}

@end
