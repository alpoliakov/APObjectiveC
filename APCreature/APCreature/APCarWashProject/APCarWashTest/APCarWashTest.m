//
//  APCarWashTest.m
//  APCreature
//
//  Created by Aleksandr Poliakov on 28.04.17.
//  Copyright © 2017 Aleksandr Poliakov. All rights reserved.
//

#import "APCarWashTest.h"
#import "APBuilding.h"
#import "APCar.h"
#import "APCarWashEnterprise.h"
#import "NSObject+APObject.h"

static const NSUInteger APCarwashTestCarsCount = 25;
static NSString *const APOutputDelimiter = @"\n-------------------------------";

@implementation APCarWashTest

+ (void)performCarWashTests {
    NSLog(@"\n---------- Car Wash -----------");
    NSLog(@"\nPerforming %@ test\n", NSStringFromSelector(_cmd));
    NSLog(APOutputDelimiter);
    
    APCarWashEnterprise *carwash = [APCarWashEnterprise object];
    for (NSUInteger index = 0; index <= APCarwashTestCarsCount; ++index) {
        NSLog(@"\nCar %lu adds to queue.", (unsigned long)index);
        [carwash processFormingQueueCars:[APCar object]];
        NSLog(APOutputDelimiter);
    }
    [carwash processOfCarProcessing];
    NSLog(@"\nProcesses completed.");
    NSLog(APOutputDelimiter);
}

@end
