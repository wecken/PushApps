//
//  PushAppsCounter.h
//  PushApps
//
//  Created by 三浦博行 on 5/28/13.
//  Copyright (c) 2013 三浦博行. All rights reserved.
//

#import <Foundation/Foundation.h>
#define MAXHISTORY  20

@interface PushAppsCounter : NSObject
{
    UInt32  historyCount[MAXHISTORY];
}
@property (assign, nonatomic) UInt32 currentCount;

- (void)addCounter;
- (void)setHistoryCount;


@end
