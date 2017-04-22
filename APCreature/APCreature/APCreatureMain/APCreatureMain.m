//
//  APCreatureMain.m
//  APCreature
//
//  Created by Aleksandr Poliakov on 21.04.17.
//  Copyright © 2017 Aleksandr Poliakov. All rights reserved.
//

#import "APCreatureMain.h"

@interface APCreatureMain ()

@property (nonatomic, retain) NSMutableSet *mutableChildren;

@end

@implementation APCreatureMain
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

- (APCreatureMain *)giveBirth {
    NSLog(@"I can give birth children.");
    return [[[APCreatureMain alloc] init] autorelease];
}

- (void)toFight {
    NSLog(@"To arms!!!");
}

- (void)sayHello {
    NSLog(@"Hello, I'm %@", self.name);
    for (APCreatureMain *child in self.mutableChildren) {
        [child sayHello];
    }
}

- (void)addChild:(APCreatureMain *)child {
    if ([child isKindOfClass:[APCreatureMain class]]) {
        [self.mutableChildren addObject:child];
    }
}

- (void)removeChild:(APCreatureMain *)child {
    [self.mutableChildren removeObject:child];
}

@end
