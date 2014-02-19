//
//  SecondViewController.m
//  PushApps
//
//  Created by 三浦博行 on 1/11/14.
//  Copyright (c) 2014 三浦博行. All rights reserved.
//

#import "SecondViewController.h"
#define dummyData1 "11回 2014/02/19 18:19"
#define dummyData2 "30回 2014/02/17 21:32"
#define dummyData3 "20回 2014/02/16 15:20"


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
    items = [[NSMutableArray alloc] init];
    [items addObject:@dummyData1];
    [items addObject:@dummyData2];
    [items addObject:@dummyData3];
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
