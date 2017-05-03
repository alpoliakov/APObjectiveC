//
//  APRooms.m
//  APCreature
//
//  Created by Aleksandr Poliakov on 29.04.17.
//  Copyright © 2017 Aleksandr Poliakov. All rights reserved.
//

#import "APRoom.h"

@interface APRoom ()
@property (nonatomic, retain) NSMutableArray *mutableWorkers;

@end

@implementation APRoom
@dynamic workers;

#pragma mark-
#pragma mark Initializatinos and Deallocations

-(void)dealloc {
    self.mutableWorkers = nil;
    
    [super dealloc];
}

- (instancetype)initWithWorkers:(NSArray *)workers {
    self = [super init];
    self.mutableWorkers = [NSMutableArray array];
    
    return self;
}

@end
