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
@property (nonatomic, readonly)         NSArray        *children;
@property (nonatomic, assign)           NSUInteger     *weight;
@property (nonatomic, assign)           NSUInteger     *age;

+ (APCreature *)creature;
+ (APCreature *)creatureWithGender:(APGender)gender;

- (instancetype)initWithGender:(APGender)gender;

- (APCreature *)giveBirthChildWithGender:(APGender)gender;
- (void)toFight;
- (void)toGiveBirth;
- (void)sayHello;
- (void)addChild:(APCreature *)child;
- (void)removeChild:(APCreature *)child;
- (void)addChildren:(NSArray *)children;
- (void)removeChildren:(NSArray *)children;
- (void)performGengerSpecificOperation;

@end
