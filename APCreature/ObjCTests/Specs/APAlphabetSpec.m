//
//  APAlphabetSpec.m
//  APCreature
//
//  Created by Aleksandr Poliakov on 27.05.17.
//  Copyright © 2017 Aleksandr Poliakov. All rights reserved.
//

#import "Kiwi.h"

#import "APAlphabet.h"
#import "APClusterAlphabet.h"
#import "APRangeAlphabet.h"
#import "APStringsAlphabet.h"


//+ (instancetype)alphabetWithRange:(NSRange)range;
//+ (instancetype)alphabetWithStrings:(NSArray *)strings;
//+ (instancetype)alphabetWithAlphabetss:(NSArray *)alphabets;
//+ (instancetype)alphabetWithSymbols:(NSString *)string;
//
//- (instancetype)initWithRange:(NSRange)range;
//- (instancetype)initWithAlphabets:(NSArray *)alphabets;
//- (instancetype)initWithStrings:(NSArray *)strings;
//- (instancetype)initWithSymbols:(NSString *)string;
//
//- (NSUInteger)count;
//- (NSString *)stringAtIndex:(NSUInteger)index;
//
//- (NSString *)objectAtIndexedSubscript:(NSUInteger)index;



SPEC_BEGIN(APAlphabetSpec)

describe(@"APAlphabet", ^{
    __block APAlphabet *alphabet = nil;
    
    afterAll(^{
        alphabet = nil;
    });
    
    context(@"when initialized with +alphabetWithRange: with range 'A'-'B'", ^{
        beforeAll(^{
            alphabet = [APAlphabet alphabetWithRange:APMakeAlphabetRange('A', 'B')];
        });
        
        it(@"should be of class APRangeAlphabet", ^{
            [[alphabet should] beKindOfClass:[APRangeAlphabet class]];
        });
        
        it(@"should be of count 2", ^{
            [[alphabet should] haveCountOf:2];
        });
        
        it(@"should contain @\"A\" at index = 0", ^{
            [[[alphabet stringAtIndex:0] should] equal:@"A"];
        });
        
        it(@"should contain @\"B\" at index = 1", ^{
            [[alphabet[1] should] equal:@"B"];
        });
        
        it(@"should throw, when requesting object at index 3", ^{
            [[theBlock(^{
                [alphabet stringAtIndex:3];
            }) should] raise];
            
            [[theBlock(^{
                id a = alphabet[3];
                [a description];
            }) should] raise];
        });
        
        it(@"should return @\"AB\" from -string", ^{
            [[[alphabet string] should] equal:@"AB"];
        });
    });
    
    context(@"when initialized with -initWithRange: with range 'A'-'B'", ^{
        beforeAll(^{
            alphabet = [[APAlphabet alloc] initWithRange:APMakeAlphabetRange('A', 'B')];
        });
        
        it(@"should be of class APRangeAlphabet", ^{
            [[alphabet should] beKindOfClass:[APRangeAlphabet class]];
        });
    });
    
    context(@"when initialized with +initWithRange:: with range 'A'-'z' when enumerated", ^{
        NSRange range = APMakeAlphabetRange('A', 'z');
        
        beforeAll(^{
            alphabet = [[APAlphabet alloc] initWithRange:range];
        });
        
        it(@"should raise", ^{
            [[theBlock(^{
                for (id symbol in alphabet) {
                    [symbol description];
                }
            }) shouldNot] raise];
        });
        
        it(@"should return count of symbols equal to 'A'-'z' range", ^{
            NSUInteger count = 0;
            for (NSString *symbol in alphabet) {
                [symbol description];
                count++;
            }
            
            [[theValue(count) should] equal:@(range.length)];
        });
        
        it(@"should return symbols in range 'A'-'z'", ^{
            unichar character = range.location;
            for (NSString *symbol in alphabet) {
                [[symbol should] equal:[NSString stringWithFormat:@"%c", character]];
                character++;
            }
        });
    });
    
    context(@"when initialized with +alphabetWithStrings: with @[@\"a\", @\"b\"]", ^{
        beforeAll(^{
            alphabet = [APAlphabet alphabetWithStrings:@[@"a", @"b"]];
        });
        
        it(@"should be of class APStringsAlphabet", ^{
            [[alphabet should] beKindOfClass:[APStringsAlphabet class]];
        });
        
        it(@"should be of count 2", ^{
            [[alphabet should] haveCountOf:2];
        });
        
        it(@"should contain @\"a\" at index = 0", ^{
            [[[alphabet stringAtIndex:0] should] equal:@"a"];
        });
        
        it(@"should contain @\"b\" at index = 1", ^{
            [[alphabet[1] should] equal:@"b"];
        });
        
        it(@"should throw, when requesting object at index 3", ^{
            [[theBlock(^{
                [alphabet stringAtIndex:3];
            }) should] raise];
            
            [[theBlock(^{
                id a = alphabet[3];
                [a description];
            }) should] raise];
        });
        
        it(@"should return @\"ab\" from -string", ^{
            [[[alphabet string] should] equal:@"ab"];
        });
    });

    context(@"when initialized with -initWithStrings: with @[@\"a\", @\"b\"]", ^{
        beforeAll(^{
            alphabet = [[APAlphabet alloc] initWithStrings:@[@"a", @"b"]];
        });
        
        it(@"should be of class APStringsAlphabet", ^{
            [[alphabet should] beKindOfClass:[APStringsAlphabet class]];
        });
    });
    
    context(@"when initialized with +initWithStrings: with array containing 'A'-'z' when enumerated", ^{
        NSRange range = APMakeAlphabetRange('A', 'z');
        NSMutableArray *strings = [NSMutableArray new];
        
        beforeAll(^{
            for (unichar symbol = range.location; symbol < NSMaxRange(range); symbol++) {
                [strings addObject:[NSString stringWithFormat:@"%c", symbol]];
            }
            
            alphabet = [[APAlphabet alloc] initWithStrings:strings];
        });
        
        it(@"should raise", ^{
            [[theBlock(^{
                for (id symbol in alphabet) {
                    [symbol description];
                }
            }) shouldNot] raise];
        });
        
        it(@"should return count of symbols equal to 'A'-'z' range", ^{
            NSUInteger count = 0;
            for (NSString *symbol in alphabet) {
                [symbol description];
                count++;
            }
            
            [[theValue(count) should] equal:@(range.length)];
        });
        
        it(@"should return symbols in range 'A'-'z'", ^{
            unichar character = range.location;
            for (NSString *symbol in alphabet) {
                [[symbol should] equal:[NSString stringWithFormat:@"%c", character]];
                character++;
            }
        });
    });
    
    context(@"when initialized with +alphabetWithAlphabets: with alphabets in range 'A'-'Z', 'a'-'z'", ^{
        APAlphabet *capitalizedAlphabet = [APAlphabet alphabetWithRange:APMakeAlphabetRange('A', 'Z')];
        APAlphabet *lowercaseAlphabet = [APAlphabet alphabetWithRange:APMakeAlphabetRange('a', 'z')];
        
        beforeAll(^{
            alphabet = [APAlphabet alphabetWithAlphabets:@[capitalizedAlphabet, lowercaseAlphabet]];
        });
        
        it(@"should be of class APClusterAlphabet", ^{
            [[alphabet should] beKindOfClass:[APClusterAlphabet class]];
        });
        
        it(@"should be of count 52", ^{
            [[alphabet should] haveCountOf:52];
        });
        
        it(@"should throw, when requesting object at index 53", ^{
            [[theBlock(^{
                [alphabet stringAtIndex:53];
            }) should] raise];
            
            [[theBlock(^{
                id a = alphabet[53];
                [a description];
            }) should] raise];
        });
        
        it(@"should return @\"A-Za-z\" from -string", ^{
            NSString *string = [NSString stringWithFormat:@"%@%@",
                                [capitalizedAlphabet string],
                                [lowercaseAlphabet string]];
            [[[alphabet string] should] equal:string];
        });
    });
    
    context(@"when initialized with -initWithAlphabets: with alphabets in range 'A'-'Z', 'a'-'z'", ^{
        APAlphabet *capitalizedAlphabet = [APAlphabet alphabetWithRange:APMakeAlphabetRange('A', 'Z')];
        APAlphabet *lowercaseAlphabet = [APAlphabet alphabetWithRange:APMakeAlphabetRange('a', 'z')];

        beforeAll(^{
            alphabet = [[APClusterAlphabet alloc] initWithAlphabets:@[capitalizedAlphabet, lowercaseAlphabet]];
        });
        
        it(@"should be of class APStringsAlphabet", ^{
            [[alphabet should] beKindOfClass:[APClusterAlphabet class]];
        });
    });
    
    context(@"when initialized with +initWithStrings: with array containing 'A'-'z' when enumerated", ^{
        NSRange capitalizedRange = APMakeAlphabetRange('A', 'Z');
        NSRange lowercaseRange = APMakeAlphabetRange('a', 'z');
        
        APAlphabet *capitalizedAlphabet = [APAlphabet alphabetWithRange:capitalizedRange];
        APAlphabet *lowercaseAlphabet = [APAlphabet alphabetWithRange:lowercaseRange];
        
        beforeAll(^{
            alphabet = [[APClusterAlphabet alloc] initWithAlphabets:@[capitalizedAlphabet, lowercaseAlphabet]];
        });
        
        it(@"should raise", ^{
            [[theBlock(^{
                for (id symbol in alphabet) {
                    [symbol description];
                }
            }) shouldNot] raise];
        });
        
        it(@"should return count of symbols equal to 'A'-'Z'+'a'-'z' range", ^{
            NSUInteger count = 0;
            for (NSString *symbol in alphabet) {
                [symbol description];
                count++;
            }
            
            [[theValue(count) should] equal:@([capitalizedAlphabet count] + [lowercaseAlphabet count])];
        });
        
        it(@"should return symbols in range 'A'-'Z'+'a'-'z'", ^{
            NSMutableString *string = [NSMutableString stringWithString:[capitalizedAlphabet string]];
            [string appendString:[lowercaseAlphabet string]];
            
            NSUInteger index = 0;
            for (NSString *symbol in alphabet) {
                [[symbol should] equal:[NSString stringWithFormat:@"%c", [string characterAtIndex:index]]];
                index++;
            }
        });
    });
});

SPEC_END
