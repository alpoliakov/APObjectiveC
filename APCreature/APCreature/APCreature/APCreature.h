//
//  APCreatureMain.h
//  APCreature
//
//  Created by Aleksandr Poliakov on 21.04.17.
//  Copyright © 2017 Aleksandr Poliakov. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, APGender) {
    kAPGenderMale,
    kAPGenderFemale,
    kAPGenderIt
};

@interface APCreature : NSObject
@property (nonatomic, assign)           APGender       gender;
@property (nonatomic, copy)             NSString       *name;
@property (nonatomic, readonly)         NSSet          *children;
@property (nonatomic, assign)           NSUInteger     *weight;
@property (nonatomic, assign)           NSUInteger     *age;


- (APCreature *)giveBirth;
- (void)toFight;
- (void)sayHello;
- (void)addChild:(APCreature *)child;
- (void)removeChild:(APCreature *)child;

@end
