//
//  ViewController.m
//  PushApps
//
//  Created by 三浦博行 on 3/29/13.
//  Copyright (c) 2013 三浦博行. All rights reserved.
//

#import "ViewController.h"
#define MAXHISTORY 20;

@interface ViewController()

@end

@implementation ViewController

UInt32 count = 0;



- (IBAction)transition:(id)sender {
    
}



- (void)viewDidLoad
{
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)pushButton:(id)sender{
//    PushAppsCounter *counter = [[PushAppsCounter alloc]init];
//    [counter addCounter];
//    NSLog(@"count: %i", (unsigned int)count);

    count ++;
    NSString *string = [NSString stringWithFormat:@"%d", (unsigned int)count];
    self.currentCountLabel.text = string;
}

- (IBAction)resetButton:(id)sender {
    
    NSDate *date = [NSDate date];
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDateComponents *dateComps = [calendar components:
                                   NSYearCalendarUnit   |
                                   NSMonthCalendarUnit  |
                                   NSDayCalendarUnit    |
                                   NSHourCalendarUnit   |
                                   NSMinuteCalendarUnit |
                                   NSSecondCalendarUnit
                                              fromDate:date];

    if(count != 0){
        NSLog(@"現在は %d年 %02d月 %02d日 %02d時 %02d分 %02d秒",
              dateComps.year,
              dateComps.month,
              dateComps.day,
              dateComps.hour,
              dateComps.minute,
              dateComps.second);
        count = 0;
        NSString *string = [NSString stringWithFormat:@"%d", (unsigned int)count];
        self.currentCountLabel.text = string;
    }
    
//    PushAppsCounter *counter = [[PushAppsCounter alloc]init];
//    [counter setHistoryCount];
//    NSString* currentCountString = [NSString stringWithFormat:@"%i", (unsigned int)counter.currentCount];
//    self.currentCountLabel.text = currentCountString;
}
    
@end