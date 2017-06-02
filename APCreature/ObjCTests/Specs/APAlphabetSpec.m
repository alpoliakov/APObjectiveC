//
//  APAlphabetSpec.m
//  APCreature
//
//  Created by Aleksandr Poliakov on 27.05.17.
//  Copyright © 2017 Aleksandr Poliakov. All rights reserved.
//

#import "Kiwi.h"

#import "APAlphabet.h"
#import "APClasterAlphabet.h"
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
    
    context(@"when initialized with + alphabetWithRange: with range 'A' - 'B'", ^{
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
                id a = alphabet[3];
            }) should] raise];
        });
        
        it(@"should return @\"AB\" from -string", ^{
            [[[alphabet string] should] equal:@"AB"];
        });
    });
    
    context(@"when initialized with - initWithRange: with range 'A' - 'B'", ^{
        beforeAll(^{
            alphabet = [[APAlphabet alloc] initWithRange:NSMakeRange('A', 'B' - 'A')];
        });
        
        it(@"should be of class APRangeAlphabet", ^{
            [[alphabet should] beKindOfClass:[APRangeAlphabet class]];
        });
    });
});

SPEC_END
