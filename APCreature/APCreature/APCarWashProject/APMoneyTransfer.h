//
//  APMoneyTransfer.h
//  APCreature
//
//  Created by Aleksandr Poliakov on 02.05.17.
//  Copyright © 2017 Aleksandr Poliakov. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol APMoneyTransfer <NSObject>
@property (nonatomic, assign) NSUInteger cash;

@optional
- (void)receiveCash:(id<APMoneyTransfer>)object;

- (NSUInteger)giveAllCash;

- (NSUInteger)giveCash:(NSUInteger)cash;

@end
