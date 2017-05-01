//
//  NSObject+APArray.h
//  APCreature
//
//  Created by Aleksandr Poliakov on 01.05.17.
//  Copyright © 2017 Aleksandr Poliakov. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (APArray)

+ (instancetype)objectsWithCount:(NSUInteger)count block:(id(^)())block;

@end
