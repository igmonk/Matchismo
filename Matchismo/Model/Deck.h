//
//  Deck.h
//  Matchismo
//
//  Created by Igor on 3/15/15.
//  Copyright (c) 2015 Igor. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

- (void)addCard:(Card *)card atTop:(BOOL)atTop;
- (void)addCard:(Card *)card;

- (Card *)drawRandomCard;

@end
