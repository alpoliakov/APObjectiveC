//
//  NSObject+APRandomNumbers.m
//  APCreature
//
//  Created by Aleksandr Poliakov on 01.05.17.
//  Copyright © 2017 Aleksandr Poliakov. All rights reserved.
//

#import "NSObject+APRandomNumbers.h"

static const NSInteger range = 2;

BOOL returnYesOrNo() {
    return arc4random_uniform(range);
}

NSRange APMakeRange(NSUInteger firstNumber, NSUInteger lastNumber) {
    NSUInteger minValue = MIN(firstNumber, lastNumber);
    NSUInteger maxValue = MAX(firstNumber, lastNumber);
    
    return NSMakeRange(minValue, maxValue - minValue + 1);
}

NSUInteger APRandomValueRange(NSRange range) {
    return arc4random_uniform((uint32_t)range.length) + range.location;
}
