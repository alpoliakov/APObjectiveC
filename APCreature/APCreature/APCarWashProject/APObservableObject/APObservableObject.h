//
//  APObservableObject.h
//  APCreature
//
//  Created by Aleksandr Poliakov on 03.06.17.
//  Copyright © 2017 Aleksandr Poliakov. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface APObservableObject : NSObject
@property (nonatomic, assign)   NSUInteger  state;
@property (nonatomic, readonly) NSSet       *observerSet;

@end
