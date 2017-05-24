//
//  main.m
//  APCreature
//
//  Created by Aleksandr Poliakov on 21.04.17.
//  Copyright © 2017 Aleksandr Poliakov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "APCreatureTests.h"
#import "APCarWashTest.h"
#import "APRandomStringTest.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        [APCreatureTests APPerformCreatureTests];
        [APCarWashTest performCarWashTests];
        [APRandomStringTest performRandomStringTests];
        
    return 0;
    }
}
