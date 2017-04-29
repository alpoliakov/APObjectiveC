//
//  APCarWashTest.m
//  APCreature
//
//  Created by Aleksandr Poliakov on 28.04.17.
//  Copyright © 2017 Aleksandr Poliakov. All rights reserved.
//

#import "APCarWashTest.h"
#import "APBuilding.h"

@implementation APCarWashTest

+ (void)performCarWashTests {
    [APCarWashTest performTestByTechAssignment];
}

static const NSUInteger count = 2;
static const NSString *adminBuilding = @"Office";
static const NSString *carWashBuilding = @"Car Wash";

+(void)performTestByTechAssignment {
    NSLog(@"Performing %@ test\n", NSStringFromSelector(_cmd));
    NSLog(@"\n________________________");
    
}

@end
