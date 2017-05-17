//
//  APWorker.h
//  APCreature
//
//  Created by Aleksandr Poliakov on 02.05.17.
//  Copyright © 2017 Aleksandr Poliakov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "APMoneyTransfer.h"

@interface APWorker : NSObject <APMoneyTransfer>


- (void)processObject:(id<APMoneyTransfer>) object;

@end
