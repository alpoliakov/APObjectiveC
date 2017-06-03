//
//  APStringsAlphabet.h
//  APCreature
//
//  Created by Aleksandr Poliakov on 26.05.17.
//  Copyright © 2017 Aleksandr Poliakov. All rights reserved.
//

#import "APAlphabet.h"

@interface APStringsAlphabet : APAlphabet
@property (nonatomic, readonly) NSArray *strings;

- (instancetype)initWithStrings:(NSArray *)strings;

@end
