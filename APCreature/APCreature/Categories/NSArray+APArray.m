//
//  NSArray+APArray.m
//  APCreature
//
//  Created by Aleksandr Poliakov on 02.05.17.
//  Copyright © 2017 Aleksandr Poliakov. All rights reserved.
//

#import "NSArray+APArray.h"
#import "NSObject+APRandomNumbers.h"

@implementation NSArray (APArray)

+ (instancetype)objectsWithCount:(NSUInteger)count block:(id(^)())block {
    if (!block || !count) {
        return nil;
    }
    
    NSMutableArray *array = [NSMutableArray arrayWithCapacity:count];
    for (NSUInteger i = 0; i < count; i++) {
        [array addObject:block()];
    }
    
    return [self arrayWithArray:array];
}

- (id)randomObject {
    NSUInteger count = [self count];
    if (count == 0) {
        return nil;
    }
    
    return [self objectAtIndex:APRandomUIntWithMaxValue(count - 1)];
}

@end
