//
//  NSString+APExtention.h
//  APCreature
//
//  Created by Aleksandr Poliakov on 13.05.17.
//  Copyright © 2017 Aleksandr Poliakov. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (APExtention)

+ (id)alphanumericAlphabet;
+ (id)numericAlphabet;
+ (id)lowercaseletterAlphabet;
+ (id)capitalizedLetterAlphabet;
+ (id)letterAlphabet;
+ (id)alphabetWithUnicodeRange:(NSRange)range;
+ (id)randomString;
+ (id)randomStringWithLength:(NSUInteger)length;
+ (id)randomStringWithLength:(NSUInteger)length alphabet:(NSString *)alphabet;

@end
