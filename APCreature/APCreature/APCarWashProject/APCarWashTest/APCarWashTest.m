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
    [APCarWashTest APPerformTestByCarWash];
}

+(void)APPerformTestByCarWash {
    NSLog(@"\n---------- Car Wash -----------");
    NSLog(@"\nPerforming %@ test\n", NSStringFromSelector(_cmd));
    NSLog(@"\n-------------------------------");
    
}

@end
