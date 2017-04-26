//
//  main.m
//  APCreature
//
//  Created by Aleksandr Poliakov on 21.04.17.
//  Copyright © 2017 Aleksandr Poliakov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSObject+APObject.h"
#import "APCreature.h"
#import "APCreatureTests.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        [APCreatureTests performCreatureTests];
        
    return 0;
    }
}
