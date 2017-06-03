//
//  APRangeAlphabet.m
//  APCreature
//
//  Created by Aleksandr Poliakov on 26.05.17.
//  Copyright © 2017 Aleksandr Poliakov. All rights reserved.
//

#import "APRangeAlphabet.h"

@interface APRangeAlphabet ()
@property (nonatomic, assign) NSRange range;

@end

@implementation APRangeAlphabet

#pragma mark -
#pragma mark Initializations and Deallocations

- (instancetype)initWithRange:(NSRange)range {
    self = [super init];
    if (self) {
        self.range = range;
    }
    
    return self;
}

#pragma mark -
#pragma mark Public Methods

- (NSUInteger)count {
    return self.range.length;
}

- (NSString *)stringAtIndex:(NSUInteger)index {
    NSRange range = self.range;
    
    NSAssert(index < range.length, NSRangeException);
    
    return [NSString stringWithFormat:@"%c", (unichar)(range.location + index)];
}

@end
