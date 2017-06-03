//
//  APAlphabet.m
//  APCreature
//
//  Created by Aleksandr Poliakov on 26.05.17.
//  Copyright © 2017 Aleksandr Poliakov. All rights reserved.
//

#import "APAlphabet.h"

#import <math.h>

#import "APRangeAlphabet.h"
#import "APClasterAlphabet.h"
#import "APStringsAlphabet.h"

#import "NSString+APExtensions.h"

NSRange APMakeAlphabetRange(unichar value1, unichar value2) {
    unichar minValue = MIN(value1, value2);
    unichar maxValue = MAX(value1, value2);
    
    return NSMakeRange(minValue, maxValue - minValue + 1);
}

@implementation APAlphabet

#pragma mark -
#pragma mark Class Methods

+ (instancetype)alphabetWithRange:(NSRange)range {
    return [[[APRangeAlphabet alloc] initWithRange:range] autorelease];
}

+ (instancetype)alphabetWithStrings:(NSArray *)strings {
    return [[[APStringsAlphabet alloc] initWithStrings:strings] autorelease];
}

+ (instancetype)alphabetWithAlphabets:(NSArray *)alphabets {
    return [[[APClasterAlphabet alloc] initWithAlphabets:alphabets] autorelease];
}

+ (instancetype)alphabetWithSymbols:(NSString *)string {
    return [self alphabetWithStrings:[string symbols]];
}

#pragma mark -
#pragma mark Initializtions and Deallocations

- (instancetype)initWithRange:(NSRange)range {
    [self release];
    
    return [[APRangeAlphabet alloc] initWithRange:range];
}

- (instancetype)initWithAlphabets:(NSArray *)alphabets {
    [self release];
    
    return [[APClasterAlphabet alloc] initWithAlphabets:alphabets];
}

- (instancetype)initWithStrings:(NSArray *)strings {
    [self release];
    
    return [[APStringsAlphabet alloc] initWithStrings:strings];
}

- (instancetype)initWithSymbols:(NSString *)string {
    return [self initWithStrings:[string symbols]];
}


#pragma mark -
#pragma mark Public Methods

- (NSUInteger)count {
    [self doesNotRecognizeSelector:_cmd];
    
    return 0;
}

- (NSString *)stringAtIndex:(NSUInteger)index {
    [self doesNotRecognizeSelector:_cmd];
    
    return nil;
}

- (NSString *)objectAtIndexedSubscript:(NSUInteger)index {
    return [self stringAtIndex:index];
}

- (NSString *)string {
    NSMutableString *string = [NSMutableString stringWithCapacity:[self count]];
    for (NSString *symbol in self) {
        [string appendString:symbol];
    }
    
    return [[string copy] autorelease];
}

#pragma mark -
#pragma mark NSFastEnumeration

- (NSUInteger)countByEnumeratingWithState:(NSFastEnumerationState *)state
                                  objects:(id  [])stackbuf
                                    count:(NSUInteger)resultLength {
    
    state->mutationsPtr = (unsigned long *)self;
    
    NSUInteger length =  MIN(state->state + resultLength, [self count]);
    resultLength = length - state->state;
    
    if (0 != resultLength) {
        for (NSUInteger index = 0; index < resultLength; index++) {
            stackbuf[index] = self[index + state->state];
        }
    }
    
    state->itemsPtr = stackbuf;
    
    state->state += resultLength;
    
    return resultLength;
}

@end
