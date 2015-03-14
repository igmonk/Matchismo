//
//  ViewController.m
//  Matchismo
//
//  Created by Igor on 3/14/15.
//  Copyright (c) 2015 Igor. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipCount;

@end

@implementation ViewController

- (void) setFlipCount:(int)flipCount {

    _flipCount = flipCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips: %d", self.flipCount];
}

- (IBAction)touchCardButton:(UIButton *)sender {
    
    NSString *imageName = nil;
    NSString *title = nil;
    if ([sender.currentTitle length]) {
        imageName = @"cardback";
        title = @"";
    } else {
        imageName = @"cardfront";
        title = @"A♣️";
    }
    [sender setBackgroundImage:[UIImage imageNamed:imageName]
                      forState:UIControlStateNormal];
    [sender setTitle:title forState:UIControlStateNormal];
    self.flipCount++;
}


@end
