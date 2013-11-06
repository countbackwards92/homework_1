//
//  ANViewController.m
//  homework_1
//
//  Created by Администратор on 11/6/13.
//  Copyright (c) 2013 MSU. All rights reserved.
//

#import "ANViewController.h"

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

@end
