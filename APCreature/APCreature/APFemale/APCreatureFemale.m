//
//  APCreatureFemale.m
//  APCreature
//
//  Created by Aleksandr Poliakov on 24.04.17.
//  Copyright © 2017 Aleksandr Poliakov. All rights reserved.
//

#import "APCreatureFemale.h"
#import "NSObject+APObject.h"

@interface APCreatureFemale ()

-(APCreature *)toGiveBirth;

@end

@implementation APCreatureFemale

#pragma mark -
#pragma mark Public Methods

- (void)performGenderSpecificOperation {
    [self toGiveBirth];
}

#pragma mark -
#pragma mark Private Methods

- (APCreature *)toGiveBirth {
        NSLog(@"Went to give birth!");
        return [[[self class] new] autorelease];
}

@end
