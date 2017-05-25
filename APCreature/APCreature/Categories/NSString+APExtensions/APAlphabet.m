//
//  APAlphabet.m
//  APCreature
//
//  Created by Aleksandr Poliakov on 26.05.17.
//  Copyright © 2017 Aleksandr Poliakov. All rights reserved.
//

#import "APAlphabet.h"

#import "APRangeAlphabet.h"
#import "APClasterAlphabet.h"
#import "APStringsAlphabet.h"

@implementation APAlphabet



#pragma mark -
#pragma mark Class Methods

+ (instancetype)alphabetWithRange:(NSUInteger)range {
    return nil;
}

+ (instancetype)alphabetWithStrings:(NSArray *)strings {
    return nil;
}

+ (instancetype)alphabetWithAlphabetss:(NSArray *)alphabets {
    return nil;
}

+ (instancetype)alphabetWithSymbols:(NSString *)string {
    return nil;
}

#pragma mark -
#pragma mark Public Methods

- (NSUInteger)count {
    return 0;
}

- (NSString *)stringAtIndex:(NSUInteger)index {
    return nil;
}

- (NSString *)objectAtIndexedSubscript:(NSUInteger)index {
    return nil;
}

#pragma mark -
#pragma mark NSFastEnumeration

- (NSUInteger)countByEnumeratingWithState:(NSFastEnumerationState *)state
                                  objects:(id  _Nullable *)buffer
                                    count:(NSUInteger)len {
    return 0;
}

@end
