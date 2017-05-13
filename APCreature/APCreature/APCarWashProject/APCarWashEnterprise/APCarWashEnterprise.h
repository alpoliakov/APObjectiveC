//
//  APCarWashEnterprise.h
//  APCreature
//
//  Created by Aleksandr Poliakov on 05.05.17.
//  Copyright © 2017 Aleksandr Poliakov. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "APCar.h"
#import "APBuilding.h"

@interface APCarWashEnterprise : NSObject
@property (nonatomic, readonly, getter=isEmptyQueue) BOOL emptyQueue;
@property (nonatomic, readonly) NSUInteger count;

- (void)processCar:(APCar *)car;

@end
