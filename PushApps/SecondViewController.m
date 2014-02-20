//
//  SecondViewController.m
//  PushApps
//
//  Created by 三浦博行 on 1/11/14.
//  Copyright (c) 2014 三浦博行. All rights reserved.
//

#import "SecondViewController.h"

#define MAX_ITEMS 9

@interface SecondViewController ()

@end

@implementation SecondViewController

NSMutableArray *items;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    
    [super viewDidLoad];
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];  // 取得
    
//    int month = [ud integerForKey:@"KEY_MONTH"];
//    int day = [ud integerForKey:@"KEY_DAY"];
//    int hour = [ud integerForKey:@"KEY_HOUR"];
//    int minute = [ud integerForKey:@"KEY_MINUTE"];
//    int count = [ud integerForKey:@"KEY_COUNT"];
    
    NSMutableArray *myArray = [ud objectForKey:@"KEY_ARRAY"];  // KEY_Sの内容をNSString型として取得
    
    items = [[NSMutableArray alloc] init];
    
    //取り出したmyArrayをitemsに挿入していく。
    NSInteger size = [myArray count];
    for (int i = 0; i < size; i++) {
        [items addObject:myArray[i]];
    }
	// Do any additional setup after loading the view.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [items count];
}

- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    tableView.userInteractionEnabled = YES;
    UITableViewCell *cell = [[UITableViewCell alloc] init];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.textLabel.text = [items objectAtIndex:indexPath.row];
    cell.textLabel.font = [UIFont fontWithName:@"HiraKakuProN-W3" size:18.0f];
    return cell;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)dismissModal:(id)sender{
    [self dismissViewControllerAnimated:YES completion:nil];
}



@end
