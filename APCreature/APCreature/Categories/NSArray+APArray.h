//
//  NSArray+APArray.h
//  APCreature
//
//  Created by Aleksandr Poliakov on 02.05.17.
//  Copyright © 2017 Aleksandr Poliakov. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (APArray)

+ (instancetype)objectsWithCount:(NSUInteger)count block:(id(^)())block;

- (id)randomObject;

@end
