//
//  ViewController.m
//  PushApps
//
//  Created by 三浦博行 on 3/29/13.
//  Copyright (c) 2013 三浦博行. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()


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
//    NSLog(@"Current Count: %i", (unsigned int)counter.currentCount);
    count ++;
    NSLog(@"count: %i", (unsigned int)count);
    NSString *string = [NSString stringWithFormat:@"%d", (unsigned int)count];
    self.currentCountLabel.text = string;
}

//
- (IBAction)resetButton:(id)sender {
    count = 0;
    NSString *string = [NSString stringWithFormat:@"%d", (unsigned int)count];
    self.currentCountLabel.text = string;
    
//    PushAppsCounter *counter = [[PushAppsCounter alloc]init];
//    [counter setHistoryCount];
//    NSString* currentCountString = [NSString stringWithFormat:@"%i", (unsigned int)counter.currentCount];
//    self.currentCountLabel.text = currentCountString;
}
    
@end