//
//  APAlphabet.h
//  APCreature
//
//  Created by Aleksandr Poliakov on 26.05.17.
//  Copyright © 2017 Aleksandr Poliakov. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface APAlphabet : NSObject <NSFastEnumeration>

+ (instancetype)alphabetWithRange:(NSUInteger)range;
+ (instancetype)alphabetWithStrings:(NSArray *)strings;
+ (instancetype)alphabetWithAlphabetss:(NSArray *)alphabets;
+ (instancetype)alphabetWithSymbols:(NSString *)string;

- (NSUInteger)count;
- (NSString *)stringAtIndex:(NSUInteger)index;

- (NSString *)objectAtIndexedSubscript:(NSUInteger)index;

@end
