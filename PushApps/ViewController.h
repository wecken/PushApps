//
//  ViewController.h
//  PushApps
//
//  Created by 三浦博行 on 3/29/13.
//  Copyright (c) 2013 三浦博行. All rights reserved.
//

#import <UIKit/UIKit.h>

#define MAXHISTORY 20;

@interface ViewController : UIViewController


@property (weak, nonatomic) IBOutlet UILabel *currentCountLabel;


- (IBAction)transition:(id)sender;

- (IBAction)pushButton:(id)sender;

- (IBAction)resetButton:(id)sender;

@end
