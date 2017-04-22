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



#pragma mark-
#pragma mark Accessors


#pragma mark-
#pragma mark Public Methods

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
