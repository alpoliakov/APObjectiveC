//
//  APCreatureMale.m
//  APCreature
//
//  Created by Aleksandr Poliakov on 24.04.17.
//  Copyright © 2017 Aleksandr Poliakov. All rights reserved.
//

#import "APCreatureMale.h"

@interface APCreatureMale ()

-(APCreature *)toGoWar;

@end

@implementation APCreatureMale

#pragma mark -
#pragma mark Public Methods

- (void)performGenderSpecificOperation {
    [self toGoWar];
}

#pragma mark -
#pragma mark Private Methods

- (APCreature *)toGoWar {
    NSLog(@"Let's go to WAR!!!");
    
    return nil;
}


@end
