//
//  APCreatureMain.h
//  APCreature
//
//  Created by Aleksandr Poliakov on 21.04.17.
//  Copyright © 2017 Aleksandr Poliakov. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM (NSUInteger, APGender) {
    kAPGenderMale,
    kAPGenderFemale,
    kAPGenderIt
};

@interface APCreatureMain : NSObject

@property (nonatomic, copy)             NSString       *name;
@property (nonatomic, retain, readonly) NSSet          *children;
@property (nonatomic, assign)           NSUInteger     *weight;
@property (nonatomic, assign)           NSUInteger     *age;

+ (instancetype)creatureWithGender:(APGender)gender;
+ (Class)classForGender:(APGender)gender;

- (instancetype)initWithGender:(APGender)gender;

@end
