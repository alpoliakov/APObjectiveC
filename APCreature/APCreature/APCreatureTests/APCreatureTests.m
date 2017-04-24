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
    //[APCreatureTests generateRandomNumber];
}

static const NSUInteger count = 10;
static const NSString *nameMale = @"Abraham";
static const NSString *nameFemale = @"Sandra";
static const NSString *chaildMale = @"David";
static const NSString *chaildFemale = @"Rebekka";

+(void)performTestByTechAssignment {
    NSLog(@"Performing %@ test\n", NSStringFromSelector(_cmd));
    NSMutableArray *array = [NSMutableArray array];
    for (int i = 0; i < count; i++) {
        NSString *maleName = [NSString stringWithFormat:@"%@%i", nameMale, i];
        NSString *femaleName = [NSString stringWithFormat:@"%@%i", nameFemale, i];
        APGender gender = arc4random_uniform(2);
        NSString *name = gender == kAPGenderMale ? maleName : femaleName;
        APCreature *creature = [APCreature creatureWithGender:gender];
        [array addObject:creature];
        [creature setName:name];
        NSString *maleChaild = [NSString stringWithFormat:@"%@%i", chaildMale, i];
        NSString *femaleChaild = [NSString stringWithFormat:@"%@%i", chaildFemale, i];
        NSString *nameChaild = gender == kAPGenderMale ? maleChaild : femaleChaild;
        APCreature *child = [creature giveBirthChildWithGender:gender];
        [creature addChild:child];
        [child setName:nameChaild];
}
    
    for (APCreature *creature in array) {
        NSLog(@"\n---------------------------------");
        [creature sayHello];
        (kAPGenderMale == [creature gender]) ? [creature toFight] : [creature toGiveBirth];
    }
    NSLog(@"%lu", (unsigned long)[array count]);
    NSLog(@"OK\n");
}

    
//+(void)generateRandomNumber {
//    int number;
//    number = (arc4random()%20)+1;
//    NSString *string = [NSString stringWithFormat:@"%i", number];
//}

@end
