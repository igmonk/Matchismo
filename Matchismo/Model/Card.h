//
//  Card.h
//  Matchismo
//
//  Created by Igor on 3/15/15.
//  Copyright (c) 2015 Igor. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (strong, nonatomic) NSString *contents;
@property (nonatomic, getter=isChoosen) BOOL chosen;
@property (nonatomic, getter=isMatched) BOOL matched;

- (int) match:(NSArray *) otherCards;

@end
