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
    NSLog(@"\n---------- Random String -----------");
    NSLog(@"\nPerforming %@ test\n", NSStringFromSelector(_cmd));
    NSLog(APOutputDelimiter);
    NSLog(@"\n%@", [NSString randomString]);
    NSLog(@"\n%@", [NSString randomStringWithLength:10]);
    NSLog(@"\n%@", [NSString randomStringWithLength:12 alphabet:[NSString lowercaseletterAlphabet]]);
    NSLog(@"\n%@", [NSString randomStringWithLength:5 alphabet:[NSString letterAlphabet]]);
    NSLog(@"\n%@", [NSString randomStringWithLength:8 alphabet:[NSString numericAlphabet]]);
    NSLog(@"\n%@", [NSString randomStringWithLength:10
                                           alphabet:[NSString capitalizedLetterAlphabet]]);
    NSLog(@"\n%@", [NSString randomStringWithLength:8 alphabet:[NSString alphanumericAlphabet]]);
    NSLog(APOutputDelimiter);
}

@end
