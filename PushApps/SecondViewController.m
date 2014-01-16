//
//  SecondViewController.m
//  PushApps
//
//  Created by 三浦博行 on 1/11/14.
//  Copyright (c) 2014 三浦博行. All rights reserved.
//

#import "SecondViewController.h"

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
    [items addObject:@"hoge"];
    [items addObject:@"fuga"];
    [items addObject:@"piyo"];
	// Do any additional setup after loading the view.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [items count];
}

- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    tableView.userInteractionEnabled = NO;
    UITableViewCell *cell = [[UITableViewCell alloc] init];
    cell.textLabel.text = [items objectAtIndex:indexPath.row];
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
