//
//  PlayingCard.h
//  Matchismo
//
//  Created by Igor on 3/15/15.
//  Copyright (c) 2015 Igor. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

+ (NSArray *)validSuits;
+ (NSUInteger)maxRank;

@end
