//
//  NSObject+APObject.m
//  APCreature
//
//  Created by Aleksandr Poliakov on 24.04.17.
//  Copyright © 2017 Aleksandr Poliakov. All rights reserved.
//

#import "NSObject+APObject.h"

@implementation NSObject (APObject)

+ (instancetype)object {
    return [[[self alloc ] init] autorelease];
}

@end
