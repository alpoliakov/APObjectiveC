//
//  APCreatureMain.m
//  APCreature
//
//  Created by Aleksandr Poliakov on 21.04.17.
//  Copyright © 2017 Aleksandr Poliakov. All rights reserved.
//

#import "APCreature.h"

@interface APCreature ()
@property (nonatomic, retain) NSMutableArray *mutableChildren;

@end

@implementation APCreature
@class APCreatureMale;
@class APCreatureFemale;
@dynamic children;

#pragma mark -
#pragma mark Class Methods

+ (APCreature *)creature {
   return [[[self alloc] init] autorelease] ;
}

+ (APCreature *)creatureWithGender:(APGender)gender {
    return [[[self alloc] initWithGender:gender] autorelease];
}

#pragma mark -
#pragma mark Initializations and Deallocations

- (void)dealloc {
    self.name = nil;
    self.mutableChildren = nil;
    
    [super dealloc];
}

- (instancetype)init {
    self = [super init];
    self.mutableChildren = [NSMutableArray array];
    self.name = [NSString stringWithFormat:@"Jhonny"];
    return self;
}

- (instancetype)initWithGender:(APGender)gender {
    self = [self init];
    if (self) {
        self.gender = gender;
    }

   return self;
}

#pragma mark -
#pragma mark Accessors

- (NSArray *)children {
    return [[self.mutableChildren copy] autorelease];
}

#pragma mark -
#pragma mark Public Methods

- (APCreature *)giveBirthChildWithGender:(APGender)gender {
    return [APCreature creatureWithGender:gender];
}

- (void)toFight {
    NSLog(@"\nLet's go to the WAR!!!");
}

- (void)toGiveBirth {
    NSLog(@"\nLet's go to give BIRTH!!!");
}

- (void)sayHello {
    NSLog(@"Hello, I'm %@", self.name);
    for (APCreature *child in self.mutableChildren) {
        [child sayHello];
    }
}

- (void)addChild:(APCreature *)child {
    if (child) {
        [self.mutableChildren addObject:child];
    }
}

- (void)removeChild:(APCreature *)child {
    [self.mutableChildren removeObject:child];
}

- (void)addChildren:(NSArray *)children {
    [self.mutableChildren addObjectsFromArray:children];
}

- (void)removeChildren:(NSArray *)children {
    [self.mutableChildren removeObjectsInArray:children];
}

- (NSUInteger)childrenCount {
    return self.mutableChildren.count;
}

- (void)performGengerSpecificOperation {

}

@end
