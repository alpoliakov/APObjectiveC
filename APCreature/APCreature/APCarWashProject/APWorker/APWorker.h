//
//  APWorker.h
//  APCreature
//
//  Created by Aleksandr Poliakov on 02.05.17.
//  Copyright © 2017 Aleksandr Poliakov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "APMoneyTransfer.h"

typedef NS_ENUM(NSUInteger, APWorkerState) {
    APWorkerIsFree,
    APWorkerIsBusy,
    APWorkerReadyForProcessing
};

@interface APWorker : NSObject <APMoneyTransfer>
@property (nonatomic, assign) APWorkerState state;

- (void)processObject:(id<APMoneyTransfer>) object;

@end
