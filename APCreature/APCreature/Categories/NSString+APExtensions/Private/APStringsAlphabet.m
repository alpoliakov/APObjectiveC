//
//  APStringsAlphabet.m
//  APCreature
//
//  Created by Aleksandr Poliakov on 26.05.17.
//  Copyright © 2017 Aleksandr Poliakov. All rights reserved.
//

#import "APStringsAlphabet.h"

@interface APStringsAlphabet ()
@property (nonatomic, retain) NSArray *strings;

@end

@implementation APStringsAlphabet

#pragma mark -
#pragma mark Initializations and Deallocations

- (void)dealloc {
    self.strings = nil;
    
    [super dealloc];
}

- (instancetype)initWithStrings:(NSArray *)strings {
    self = [super init];
    if (self) {
        self.strings = strings;
    }
    
    return self;
}

#pragma mark -
#pragma mark Public Methods

- (NSUInteger)count {
    return [self.strings count];
}

- (NSString *)stringAtIndex:(NSUInteger)index {
    return self.strings[index];
}

#pragma mark -
#pragma mark NSFastEnumeration

- (NSUInteger)countByEnumeratingWithState:(NSFastEnumerationState *)state
                                  objects:(id  [])stackbuf
                                    count:(NSUInteger)resultLength {
    
    return [self.strings countByEnumeratingWithState:state
                                             objects:stackbuf
                                               count:resultLength];
}

@end
