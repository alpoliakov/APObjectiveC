//
//  APQueue.h
//  APCreature
//
//  Created by Aleksandr Poliakov on 12.05.17.
//  Copyright © 2017 Aleksandr Poliakov. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface APQueue : NSObject
@property (nonatomic, readonly) NSUInteger count;

- (void)enqueue:(id)object;
- (id)dequeue;

@end
