//
//  NSString+APExtention.m
//  APCreature
//
//  Created by Aleksandr Poliakov on 13.05.17.
//  Copyright © 2017 Aleksandr Poliakov. All rights reserved.
//

#import "NSString+APExtensions.h"
#import "NSObject+APRandomNumbers.h"

static const NSUInteger kNSStringDefaultRandomStringLength  = 30;
static const NSUInteger kAPNumberOne                        = 1;

static const unichar    kAPFirstLowerCaseLetter    = 'a';
static const unichar    kAPLastLowerCaseLetter     = 'z';
static const unichar    kAPFirstCapitalLetter      = 'A';
static const unichar    kAPLastCapitalLetter       = 'Z';
static const unichar    kAPFirstNumberSign         = '0';
static const unichar    kAPLastNumberSign          = '9';

@implementation NSString (APExtensions)

+ (instancetype)alphanumericAlphabet {
    NSMutableString *result = [NSMutableString stringWithString:[self letterAlphabet]];
    [result appendString:[self numericAlphabet]];
    
    return [self stringWithString:result];
}

+ (instancetype)numericAlphabet {
    return [self alphabetWithUnicodeRange:NSMakeRange(kAPFirstNumberSign,
                                                      kAPLastNumberSign -
                                                      kAPFirstNumberSign)];
}

+ (instancetype)lowercaseletterAlphabet {
    return [self alphabetWithUnicodeRange:NSMakeRange(kAPFirstLowerCaseLetter,
                                                      kAPLastLowerCaseLetter -
                                                      kAPFirstLowerCaseLetter)];
}

+ (instancetype)capitalizedLetterAlphabet {
    return [self alphabetWithUnicodeRange:NSMakeRange(kAPFirstCapitalLetter,
                                                      kAPLastCapitalLetter -
                                                      kAPFirstCapitalLetter)];
}

+ (instancetype)letterAlphabet {
    NSMutableString *result = [NSMutableString stringWithString:[self lowercaseletterAlphabet]];
    [result appendString:[self capitalizedLetterAlphabet]];
    
    return [self stringWithString:result];
}

+ (instancetype)alphabetWithUnicodeRange:(NSRange)range {
    NSMutableString *result = [NSMutableString string];
    for (unichar character = range.location; character < NSMaxRange(range); character++) {
        [result appendFormat:@"%c", character];
    }
    
    return [self stringWithString:result];
}

+ (instancetype)randomString {
    return [self randomStringWithLength:arc4random_uniform(kNSStringDefaultRandomStringLength)];
}

+ (instancetype)randomStringWithLength:(NSUInteger)length {
    return [self randomStringWithLength:length alphabet:[self alphanumericAlphabet ]];
}

+ (instancetype)randomStringWithLength:(NSUInteger)length alphabet:(NSString *)alphabet {
    NSMutableString *result = [NSMutableString stringWithCapacity:length];
    NSUInteger lengthAlphabet = [alphabet length];
    
    for (NSUInteger index = 0; index < length; index++) {
        unichar resultChar = [alphabet characterAtIndex:arc4random_uniform((u_int32_t)lengthAlphabet)];
        [result appendFormat:@"%c", resultChar];
    }
    
    return [self stringWithString:result];
}

- (NSArray *)symbols  {
    NSMutableArray *result = [NSMutableArray arrayWithCapacity:[self length]];
    NSUInteger length = [self length];
    
    for (NSUInteger index = 0; index <= length; index++) {
        unichar resultChar = [self characterAtIndex:index];
        [result addObject:[NSString stringWithFormat:@"%c", resultChar]];
    }
    
    return [[result copy] autorelease];
}

@end
