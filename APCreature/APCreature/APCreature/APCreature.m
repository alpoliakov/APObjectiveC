//
//  APCreatureMain.m
//  APCreature
//
//  Created by Aleksandr Poliakov on 21.04.17.
//  Copyright © 2017 Aleksandr Poliakov. All rights reserved.
//

#import "APCreature.h"

@interface APCreature ()
@property (nonatomic, retain) NSMutableSet *mutableChildren;

@end

@implementation APCreature

@dynamic children;


#pragma mark-
#pragma mark Class Methods



#pragma mark -
#pragma mark Initializations and Deallocations

- (void)dealloc {
    self.name = nil;
    self.mutableChildren = nil;
    
    [super dealloc];
}

- (instancetype)init {
    self = [super init];
    if (self) {
        self.mutableChildren = [NSMutableSet set];
    }
    
    return self;
}

#pragma mark-
#pragma mark Accessors

- (NSSet *) children {
    return [[self.mutableChildren copy] autorelease];
}

#pragma mark-
#pragma mark Public Methods

- (APCreature *)giveBirth {
    NSLog(@"I can give birth children.");
    return [[[APCreature alloc] init] autorelease];
}

- (void)toFight {
    NSLog(@"To arms!!!");
}

- (void)sayHello {
    NSLog(@"Hello, I'm %@", self.name);
    for (APCreature *child in self.mutableChildren) {
        [child sayHello];
    }
}

- (void)addChild:(APCreature *)child {
    if ([child isKindOfClass:[APCreature class]]) {
        [self.mutableChildren addObject:child];
    }
}

- (void)removeChild:(APCreature *)child {
    [self.mutableChildren removeObject:child];
}

@end
