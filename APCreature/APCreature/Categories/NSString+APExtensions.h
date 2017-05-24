//
//  NSString+APExtention.h
//  APCreature
//
//  Created by Aleksandr Poliakov on 13.05.17.
//  Copyright © 2017 Aleksandr Poliakov. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (APExtensions)

+ (instancetype)alphanumericAlphabet;
+ (instancetype)numericAlphabet;
+ (instancetype)lowercaseletterAlphabet;
+ (instancetype)capitalizedLetterAlphabet;
+ (instancetype)letterAlphabet;
+ (instancetype)alphabetWithUnicodeRange:(NSRange)range;
+ (instancetype)randomString;
+ (instancetype)randomStringWithLength:(NSUInteger)length;
+ (instancetype)randomStringWithLength:(NSUInteger)length alphabet:(NSString *)alphabet;

- (NSArray *)symbols;

@end
