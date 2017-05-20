//
//  NSArray+APExtention.h
//  APCreature
//
//  Created by Aleksandr Poliakov on 16.05.17.
//  Copyright © 2017 Aleksandr Poliakov. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (APExtention)

+ (instancetype)objectsWithCount:(NSUInteger)count block:(id(^)())block;

- (void)performBlockWithEachObject:(void (^)(id object))block;

- (id)randomObject;

- (id)objectsOfClass:(Class)cls;

@end
