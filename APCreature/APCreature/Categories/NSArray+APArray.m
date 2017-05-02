//
//  NSArray+APArray.m
//  APCreature
//
//  Created by Aleksandr Poliakov on 02.05.17.
//  Copyright © 2017 Aleksandr Poliakov. All rights reserved.
//

#import "NSArray+APArray.h"
#import "NSObject+APObject.h"

@implementation NSArray (APArray)

+ (instancetype)objectsWithCount:(NSUInteger)count {
    return [self arrayObjectsWithCount:count block:^{return [self object];}];
}


+ (instancetype)arrayObjectsWithCount:(NSUInteger)count block:(id(^)())block {
    if (!block || !count) {
        return nil;
    }
    
    NSMutableArray *array = [NSMutableArray arrayWithCapacity:count];
    for (NSUInteger i = 0; i < count; i++) {
        [array addObject:block()];
    }
    
    return [[array copy] autorelease];
}

@end
