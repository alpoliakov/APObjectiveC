//
//  APCreatureMain.m
//  APCreature
//
//  Created by Aleksandr Poliakov on 21.04.17.
//  Copyright © 2017 Aleksandr Poliakov. All rights reserved.
//

#import "APCreature.h"
#import "APCreatureMale.h"
#import "APCreatureFemale.h"
#import "NSObject+APObject.h"

@interface APCreature ()
@property (nonatomic, retain) NSMutableArray *mutableChildren;

@end

@implementation APCreature

@dynamic children;

#pragma mark -
#pragma mark Class Methods

+ (instancetype)creatureWithGender:(APGender)gender {
    Class classForCreation = [APCreature classForGender:gender];
    return [[[classForCreation alloc] initWithGender:gender] autorelease];
}

+ (Class)classForGender:(APGender)gender {
    Class result = Nil;
    if (kAPGenderMale == gender) {
        result = [APCreatureMale class];
    } else if (kAPGenderFemale == gender) {
        result = [APCreatureFemale class];
    }
    
    return result;
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
    
    return self;
}

- (instancetype)initWithGender:(APGender)gender {
    self = [self init];
    
   return self;
}

#pragma mark -
#pragma mark Accessors

- (NSArray *)children {
    return [[self.mutableChildren copy] autorelease];
}

#pragma mark -
#pragma mark Public Methods

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

- (void)performGenderSpecificOperation {

}

@end
