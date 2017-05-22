//
//  NSObject+APObject.m
//  APCreature
//
//  Created by Aleksandr Poliakov on 24.04.17.
//  Copyright © 2017 Aleksandr Poliakov. All rights reserved.
//

#import "NSObject+APObject.h"
#import "NSArray+APExtensions.h"

@implementation NSObject (APObject)

+ (instancetype)object {
    return [[[self alloc ] init] autorelease];
}

+ (instancetype)objectsWithCount:(NSUInteger)count {
    return [NSArray objectsWithCount:count block:^{
        return [self object];
    }];
}


@end
