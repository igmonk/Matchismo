//
//  CardMatchingGame.h
//  Matchismo
//
//  Created by Igor on 3/15/15.
//  Copyright (c) 2015 Igor. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Deck.h"

@interface CardMatchingGame : NSObject

@property (nonatomic, readonly) NSInteger score;

// designated initializer
- (instancetype)initWithCardCount:(NSUInteger)count
                       usingDeck:(Deck *)deck;

- (void)chooseCardAtIndex:(NSUInteger)index;

- (Card *)cardAtIndex:(NSUInteger)index;

@end
