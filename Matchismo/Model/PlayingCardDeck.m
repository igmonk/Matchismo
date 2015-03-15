//
//  PlayingCardDeck.m
//  Matchismo
//
//  Created by Igor on 3/15/15.
//  Copyright (c) 2015 Igor. All rights reserved.
//

#import "PlayingCardDeck.h"
#import "PlayingCard.h"

@implementation PlayingCardDeck

- (instancetype) init {

    self = [super init];
    
    if (self) {
        
        for (NSString *suit in [PlayingCard validSuits]) {
            for (NSUInteger rank = 1; rank <= [PlayingCard maxRank]; rank++) {
                PlayingCard *playingCard = [[PlayingCard alloc] init];
                playingCard.suit = suit;
                playingCard.rank = rank;
                [self addCard:playingCard];
            }
        }
    }
    
    return self;
}

@end
