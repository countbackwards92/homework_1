//
//  ANViewController.m
//  homework_1
//
//  Created by Администратор on 11/6/13.
//  Copyright (c) 2013 MSU. All rights reserved.
//

#import "ANViewController.h"
#import "ANTableViewController.h"
#import "ANAnimatedButtonsController.h"

@interface ANViewController ()

@property (nonatomic) int pushCount;

@end

@implementation ANViewController

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
    
    self.navigationController.navigationBar.translucent = NO;
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)countButtonPush:(id)sender {
    self.pushCount++;
    [self.countLabel setText:[NSString stringWithFormat:@"%d",self.pushCount]];
}
- (IBAction)gotoAnimation:(id)sender {
    UIViewController *sec = [[ANAnimatedButtonsController alloc] initWithNibName:@"ANAnimatedButtonsController" bundle:nil];
    [self.navigationController pushViewController:sec animated:YES];
}

- (IBAction)goToTableView:(id)sender {
    UIViewController *sec=[[ANTableViewController alloc] initWithNibName:@"ANTableViewController" bundle:nil];
    [self.navigationController pushViewController:sec animated:YES];
}
/*
- (void)viewWillAppear:(BOOL)animated {
	[super viewWillAppear:animated];
    
	[self.navigationController setNavigationBarHidden:YES animated:YES];
}

- (void)viewWillDisappear:(BOOL)animated {
	[super viewWillDisappear:animated];
    
	[self.navigationController setNavigationBarHidden:NO animated:YES];
}*/	

@end
