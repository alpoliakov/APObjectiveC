//
//  APCarWashEnterprise.h
//  APCreature
//
//  Created by Aleksandr Poliakov on 05.05.17.
//  Copyright © 2017 Aleksandr Poliakov. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "APCar.h"

@interface APCarWashEnterprise : NSObject

- (void)processFormingQueueCars:(APCar *)car;
- (void)processOfCarProcessing;

- (void)processCar:(APCar *)car;

@end
