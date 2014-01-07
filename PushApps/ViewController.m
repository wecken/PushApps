//
//  ViewController.m
//  PushApps
//
//  Created by 三浦博行 on 3/29/13.
//  Copyright (c) 2013 三浦博行. All rights reserved.
//

#import "ViewController.h"

#import "PushAppsCounter.h"

@interface ViewController ()

@end

@implementation ViewController

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
    PushAppsCounter *counter = [[PushAppsCounter alloc]init];
    [counter addCounter];
    NSLog(@"Current Count: %i", (unsigned int)counter.currentCount);
//    self.currentCountLabel.text = currentCountString;
}


- (IBAction)resetButton:(id)sender {
    PushAppsCounter *counter = [[PushAppsCounter alloc]init];
    [counter setHistoryCount];
    counter.currentCount = 0;
    NSString* currentCountString = [NSString stringWithFormat:@"%i", (unsigned int)counter.currentCount];
    self.currentCountLabel.text = currentCountString;
    

}
@end
