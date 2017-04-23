//
//  APCreatureTests.m
//  APCreature
//
//  Created by Aleksandr Poliakov on 21.04.17.
//  Copyright © 2017 Aleksandr Poliakov. All rights reserved.
//

#import "APCreatureTests.h"
#import "APCreature.h"
#import "NSObject+APExtension.h"
#import "NSArray+APExtension.h"


@implementation APCreatureTests

+ (void)performCreatureTests {
    [APCreatureTests performTestByTechAssignment];
}

+(void)performTestByTechAssignment {
    NSLog(@"Performing %@ test\n", NSStringFromSelector(_cmd));
    
    APCreature *creature1 = [APCreature creatureWithGender:kAPGenderMale];
    [creature1 setName:@"Bob"];
    APCreature *child1 = [creature1 giveBirthChildWithGender:kAPGenderFemale];
    APCreature *child2 = [creature1 giveBirthChildWithGender:kAPGenderFemale];
    [child1 setName:@"child1"];
    [child2 setName:@"child2"];
    [creature1 addChild:child1];
    [creature1 addChild:child2];
    [creature1 sayHello];
    
    APCreature *creature2 = [APCreature creatureWithGender:kAPGenderMale];
    [creature2 setName:@"Frank"];
    APCreature *child3 = [creature2 giveBirthChildWithGender:kAPGenderFemale];
    APCreature *child4 = [creature2 giveBirthChildWithGender:kAPGenderFemale];
    [creature2 addChild:child3];
    [creature2 addChild:child4];
    [child3 setName:@"child3"];
    [child4 setName:@"child4"];
    [creature2 sayHello];
    
    APCreature *creature3 = [APCreature creatureWithGender:kAPGenderFemale];
    [creature3 setName:@"Lucy"];
    APCreature *child5 = [creature3 giveBirthChildWithGender:kAPGenderFemale];
    APCreature *child6 = [creature3 giveBirthChildWithGender:kAPGenderFemale];
    [creature3 addChild:child5];
    [creature3 addChild:child6];
    [child5 setName:@"child5"];
    [child6 setName:@"child6"];
    [creature3 sayHello];
    
    NSArray *creatures = @[creature1, creature2, creature3];
    for (APCreature *creature in creatures) {
        if (kAPGenderMale == [creature gender]) {
            [creature toFight];
        } else if (kAPGenderFemale == [creature gender]) {
            APCreature *boy = [creature giveBirthChildWithGender:kAPGenderMale];
            APCreature *girl = [creature giveBirthChildWithGender:kAPGenderFemale];
            assert(NULL != boy);
            assert(NULL != girl);
        }
    }
    
    NSLog(@"OK\n");
}

@end
