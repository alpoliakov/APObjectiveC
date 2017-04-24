//
//  APCreatureFemale.m
//  APCreature
//
//  Created by Aleksandr Poliakov on 24.04.17.
//  Copyright © 2017 Aleksandr Poliakov. All rights reserved.
//

#import "APCreatureFemale.h"

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
        NSLog(@"go to birth");
        return [[[self class] new] autorelease];
}

@end
