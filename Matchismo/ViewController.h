//
//  ViewController.h
//  Matchismo
//
//  Created by Igor on 3/14/15.
//  Copyright (c) 2015 Igor. All rights reserved.
//
// Abstract class. Must implement methods as described below.

#import <UIKit/UIKit.h>
#import "Deck.h"

@interface ViewController : UIViewController

// for subclasses
- (Deck *) createDeck; // abstract

@end
