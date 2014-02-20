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
        
        //NSUSerDefaults 値を端末に保存しておいて、変更したり取り出したりできる
        NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];  // 取得
        [ud setInteger:dateComps.month forKey:@"KEY_MONTH"];  // int型のdateComps.monthをKEY_MONTHというキーで保存
        [ud setInteger:dateComps.day forKey:@"KEY_DAY"];
        [ud setInteger:dateComps.hour forKey:@"KEY_HOUR"];
        [ud setInteger:dateComps.minute forKey:@"KEY_MINUTE"];
        [ud setInteger:count forKey:@"KEY_COUNT"];
        [ud synchronize];  // NSUserDefaultsに即時反映させる（即時で無くてもよい場合は不要）
        
        count = 0;
        NSString *string = [NSString stringWithFormat:@"%d", (unsigned int)count];
        self.currentCountLabel.text = string;
    }
    
//    PushAppsCounter *counter = [[PushAppsCounter alloc]init];
//    [counter setHistoryCount];
//    NSString* currentCountString = [NSString stringWithFormat:@"%i", (unsigned int)counter.currentCount];
//    self.currentCountLabel.text = currentCountString;
}
//
//- (NSString *)dateTimeSender:(int)date :(int)hour :(int)minute{
//    date = self.dateComps.day;
//    NSString *dateTime = [NSString stringWithFormat:@"%d %d:%d", (unsigned int)date,(unsigned int)hour, (unsigned int)minute];
//    return dateTime;
//}

    
@end