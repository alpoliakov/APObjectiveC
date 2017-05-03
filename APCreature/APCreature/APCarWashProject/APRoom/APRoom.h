//
//  APRooms.h
//  APCreature
//
//  Created by Aleksandr Poliakov on 29.04.17.
//  Copyright © 2017 Aleksandr Poliakov. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface APRoom : NSObject
@property (nonatomic, retain, readonly) NSArray *workers;

- (instancetype)initWithWorkers:(NSArray *)workers;

@end
