//
//  APCreatureMain.h
//  APCreature
//
//  Created by Aleksandr Poliakov on 21.04.17.
//  Copyright © 2017 Aleksandr Poliakov. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM (NSUInteger, APGender) {
    kAPSexMale,
    kAPSexFemale,
    kAPSexIt
};

@interface APCreatureMain : NSObject
@property (nonatomic, assign)           APGender       sex;
@property (nonatomic, copy)             NSString       *name;
@property (nonatomic, retain, readonly) NSSet          *children;
@property (nonatomic, assign)           NSUInteger     *weight;
@property (nonatomic, assign)           NSUInteger     *age;

- (void)toFight;
- (void)sayHello;
- (void)addChild:(APCreatureMain *)child;
- (void)removeChild:(APCreatureMain *)child;

@end
