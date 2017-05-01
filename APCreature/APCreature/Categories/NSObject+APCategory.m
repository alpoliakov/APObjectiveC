//
//  NSObject+APCategory.m
//  APCreature
//
//  Created by Aleksandr Poliakov on 01.05.17.
//  Copyright © 2017 Aleksandr Poliakov. All rights reserved.
//

#import "NSObject+APCategory.h"

@implementation NSObject (APCategory)

+ (instancetype)object {
    return [[[self alloc ] init] autorelease];
}

@end
