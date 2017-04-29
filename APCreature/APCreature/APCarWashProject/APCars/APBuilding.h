//
//  APBuilding.h
//  APCreature
//
//  Created by Aleksandr Poliakov on 28.04.17.
//  Copyright © 2017 Aleksandr Poliakov. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, APType) {
    kAPTypeAdmin,
    kAPTypeCarWash
};

@interface APBuilding : NSObject
@property (nonatomic, retain, readonly) NSArray *rooms;

- (instancetype)initWithRooms:(NSArray *)rooms andType:(APType *)type;

- (void)addRoom:(APBuilding *)room;
- (void)removeRoom:(APBuilding *)room;

@end
