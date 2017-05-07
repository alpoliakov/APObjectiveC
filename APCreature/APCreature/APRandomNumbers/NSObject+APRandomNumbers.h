//
//  NSObject+APRandomNumbers.h
//  APCreature
//
//  Created by Aleksandr Poliakov on 01.05.17.
//  Copyright © 2017 Aleksandr Poliakov. All rights reserved.
//

#import <Foundation/Foundation.h>

BOOL APRandomBool();
NSRange APMakeRange(NSUInteger firstNumber, NSUInteger lastNumber);
NSUInteger APRandomValueWithRange(NSRange range);
