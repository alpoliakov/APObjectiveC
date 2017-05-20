//
//  NSArray+APExtention.m
//  APCreature
//
//  Created by Aleksandr Poliakov on 16.05.17.
//  Copyright © 2017 Aleksandr Poliakov. All rights reserved.
//

#import "NSArray+APExtention.h"
#import "NSObject+APRandomNumbers.h"

@implementation NSArray (APExtention)

#pragma mark -
#pragma mark Class Methods

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

#pragma mark -
#pragma mark Public Methods

- (void)performBlockWithEachObject:(void (^)(id object))block {
    if (!block) {
        return;
    }
    
    [self enumerateObjectsUsingBlock:^(id object, NSUInteger idx, BOOL *stop) {
        block(object);
    }];
}

- (id)randomObject {
    NSUInteger count = [self count];
    if (count == 0) {
        return nil;
    }
    
    return [self objectAtIndex:APRandomUIntWithMaxValue(count - 1)];
}

- (id)objectsOfClass:(Class)class {
    NSMutableArray *mutableResult = [NSMutableArray array];
    for (id object in self) {
        if ([object isMemberOfClass:class]) {
            [mutableResult addObject:object];
        }
    }
    
    return [[mutableResult copy] autorelease];
}

@end
