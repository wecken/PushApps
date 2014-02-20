//
//  ViewController.m
//  PushApps
//
//  Created by 三浦博行 on 3/29/13.
//  Copyright (c) 2013 三浦博行. All rights reserved.
//

#import "ViewController.h"
#define MAX_LIST 10

@interface ViewController()

@end

@implementation ViewController

UInt32 count = 0;
NSString *string[MAX_LIST]; //string型のarray, string[i] をリストに表示させる最大数（MAX_LIST）分作成

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
    NSString *currentCount = [NSString stringWithFormat:@"%d", (unsigned int)count];
    self.currentCountLabel.text = currentCount;
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
//        NSLog(@"現在は %d年 %02d月 %02d日 %02d時 %02d分 %02d秒",
//              dateComps.year,
//              dateComps.month,
//              dateComps.day,
//              dateComps.hour,
//              dateComps.minute,
//              dateComps.second);
        
        //NSUSerDefaults 値を端末に保存しておいて、変更したり取り出したりできる
        NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];  // 取得
        [ud setInteger:dateComps.month forKey:@"KEY_MONTH"];  // int型のdateComps.monthをKEY_MONTHというキーで保存
        [ud setInteger:dateComps.day forKey:@"KEY_DAY"];
        [ud setInteger:dateComps.hour forKey:@"KEY_HOUR"];
        [ud setInteger:dateComps.minute forKey:@"KEY_MINUTE"];
        [ud setInteger:count forKey:@"KEY_COUNT"];
        [ud synchronize];  // NSUserDefaultsに即時反映させる（即時で無くてもよい場合は不要）
        NSString *currentCount;
        
        
        //空のリストを生成する
        NSMutableArray *myArray = [NSMutableArray array];
        
        
        string[MAX_LIST-1] = NULL; //最後のリストを消去
        for (int i = 0; i < MAX_LIST; i++) {
            string[(MAX_LIST-1) -i] = string[(MAX_LIST-2) -i]; //
        }
        
        string[0] = [NSString stringWithFormat:@"%d回 %d月%d日 %02d:%02d", (unsigned int)count, (unsigned int)dateComps.month, (unsigned int)dateComps.day, (unsigned int)dateComps.hour, (unsigned int)dateComps.minute]; //最初のstringに最新の回数データを格納。

        
//        NSLog(@"%@ / %@ / %@ / %@ / %@ / %@ / %@ / %@ / %@ / %@",string[0],string[1],string[2],string[3],string[4],string[5],string[6],string[7],string[8],string[9]);
        
        
        //MAX_ITEM回分のstring[]をmyArrayの中に格納。
        for (int i = 0; i < MAX_LIST; i++) {
        [myArray addObject:string[i]];
        }
    
        [ud setObject:myArray forKey:@"KEY_ARRAY"];  // object myArrayをKEY_ARRAYというキーで保存。取り出しはSecondViewControllerの中で行う。
        count = 0;
        currentCount = [NSString stringWithFormat:@"%d", (unsigned int)count];
        self.currentCountLabel.text = currentCount;
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