//
//  APCar.h
//  APCreature
//
//  Created by Aleksandr Poliakov on 02.05.17.
//  Copyright © 2017 Aleksandr Poliakov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "APMoneyTransfer.h"

typedef NS_ENUM(NSUInteger, APDirtyOrClear) {
    kAPDirty,
    kAPClear,
};

@interface APCar : NSObject <APMoneyTransfer>
@property (nonatomic, assign) NSUInteger isDirty;

- (instancetype)init;

@end
