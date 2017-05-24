//
//  APCar.h
//  APCreature
//
//  Created by Aleksandr Poliakov on 02.05.17.
//  Copyright © 2017 Aleksandr Poliakov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "APMoneyTransfer.h"

typedef NS_ENUM(NSUInteger, APCarState) {
    APCarDirty,
    APCarClear
};

@interface APCar : NSObject <APMoneyTransfer>
@property (nonatomic, assign) APCarState state;

@end
