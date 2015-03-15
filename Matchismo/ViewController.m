//
//  ViewController.m
//  Matchismo
//
//  Created by Igor on 3/14/15.
//  Copyright (c) 2015 Igor. All rights reserved.
//

#import "ViewController.h"
#import "PlayingCardDeck.h"
#import "CardMatchingGame.h"

@interface ViewController ()

@property (strong, nonatomic) Deck *deck;
@property (strong, nonatomic) CardMatchingGame *game;
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *cardButtons;
@property (weak, nonatomic) IBOutlet UILabel *scoreLabel;

@end

@implementation ViewController

- (CardMatchingGame *)game {

    if (!_game) _game = [[CardMatchingGame alloc] initWithCardCount:[self.cardButtons count]
                                                          usingDeck:self.deck];
    return _game;
}

- (Deck *)deck {

    if (!_deck) _deck = [[PlayingCardDeck alloc] init];
    return _deck;
}

- (IBAction)touchCardButton:(UIButton *)sender {
    
    int cardIndex = [self.cardButtons indexOfObject:sender];
    [self.game chooseCardAtIndex:cardIndex];
    [self updateUI];
}

- (void) updateUI {

    for (int index = 0; index < [self.cardButtons count]; index++) {
        UIButton *cardButton = self.cardButtons[index];
        Card *card = [self.game cardAtIndex:index];
        [cardButton setTitle:[self titleForCard:card]
                    forState:UIControlStateNormal];
        [cardButton setBackgroundImage:[self backgroundImageForCard:card]
                              forState:UIControlStateNormal];
        cardButton.enabled = !card.isMatched;
    }
    self.scoreLabel.text = [NSString stringWithFormat:@"Score: %d", self.game.score];
}

- (NSString *)titleForCard:(Card *)card {
    
    return (card.isChoosen) ? card.contents : @"";
}

- (UIImage *)backgroundImageForCard:(Card *)card {
    
    return [UIImage imageNamed:card.isChoosen ? @"cardfront" : @"cardback"];
}


@end
