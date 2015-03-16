//
//  PlayingCardGameViewController.m
//  Matchismo
//
//  Created by Igor on 3/16/15.
//  Copyright (c) 2015 Igor. All rights reserved.
//

#import "PlayingCardGameViewController.h"
#import "PlayingCardDeck.h"

@interface PlayingCardGameViewController ()

@end

@implementation PlayingCardGameViewController

- (Deck *) createDeck {

    return [[PlayingCardDeck alloc] init];
}

@end
