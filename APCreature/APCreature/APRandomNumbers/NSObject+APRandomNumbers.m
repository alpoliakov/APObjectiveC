//
//  NSObject+APRandomNumbers.m
//  APCreature
//
//  Created by Aleksandr Poliakov on 01.05.17.
//  Copyright © 2017 Aleksandr Poliakov. All rights reserved.
//

#import "NSObject+APRandomNumbers.h"

static const NSInteger APrange = 2;

BOOL APRandomBool() {
    return arc4random_uniform(APrange);
}

NSRange APMakeRange(NSUInteger firstNumber, NSUInteger lastNumber) {
    NSUInteger minValue = MIN(firstNumber, lastNumber);
    NSUInteger maxValue = MAX(firstNumber, lastNumber);
    
    return NSMakeRange(minValue, maxValue - minValue + 1);
}

NSUInteger APRandomValueWithRange(NSRange range) {
    return arc4random_uniform((uint32_t)range.length) + range.location;
}
