//
//  APRangeAlphabet.h
//  APCreature
//
//  Created by Aleksandr Poliakov on 26.05.17.
//  Copyright © 2017 Aleksandr Poliakov. All rights reserved.
//

#import "APAlphabet.h"

@interface APRangeAlphabet : APAlphabet
@property (nonatomic, readonly) NSRange range;

- (instancetype)initWithRange:(NSRange)range;

@end
