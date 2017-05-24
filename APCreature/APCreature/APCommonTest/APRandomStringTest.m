//
//  APRandomStringTest.m
//  APCreature
//
//  Created by Aleksandr Poliakov on 24.05.17.
//  Copyright © 2017 Aleksandr Poliakov. All rights reserved.
//

#import "APRandomStringTest.h"
#import "NSString+APExtensions.h"

static NSString *const APOutputDelimiter = @"\n-------------------------------";

@implementation APRandomStringTest

+ (void)performRandomStringTests {
    NSLog(APOutputDelimiter);
    NSLog(@"\n%@", [NSString randomString]);
    NSLog(@"\n%@", [NSString randomStringWithLength:10]);
    NSLog(@"\n%@", [NSString randomStringWithLength:10 alphabet:[NSString randomString]]);
    NSLog(@"\n%@", [NSString alphabetWithUnicodeRange:NSMakeRange(1, 10)]);
    NSLog(APOutputDelimiter);
}

@end
