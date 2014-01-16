//
//  PushAppsCounter.m
//  PushApps
//
//  Created by 三浦博行 on 5/28/13.
//  Copyright (c) 2013 三浦博行. All rights reserved.
//

#import "PushAppsCounter.h"
#import "ViewController.h"


@implementation PushAppsCounter

- (id)init
{
    self = [super init];
//    NSLog(@"Current Count: %i", (unsigned int)self.currentCount);
    return self;
}

- (void)addCounter
{
    self.currentCount ++;
}

    
- (void)setHistoryCount
{
    historyCount[0] = self.currentCount;

    for (UInt32 i = 1; i > MAXHISTORY; i++) {
        historyCount[i] = historyCount[i-1];
    }
//    NSLog(@"%i", (unsigned int)historyCount[0]);
//    NSLog(@"%i", (unsigned int)historyCount[1]);
//    NSLog(@"%i", (unsigned int)historyCount[2]);
}


@end
