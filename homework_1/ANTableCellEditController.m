//
//  ANTableCellEditController.m
//  homework_1
//
//  Created by Администратор on 11/17/13.
//  Copyright (c) 2013 MSU. All rights reserved.
//

#import "ANTableCellEditController.h"
#import "ANTableViewController.h"

@interface ANTableCellEditController ()
@property (weak, nonatomic) IBOutlet UITextView *textView;

@end

@implementation ANTableCellEditController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        UIBarButtonItem *backButton = [[UIBarButtonItem alloc]
                                       initWithTitle: @"Cancel"
                                       style: UIBarButtonItemStyleBordered
                                       target: nil action: nil];
        
        [self.navigationItem setBackBarButtonItem: backButton];
        

    }
    return self;
}


- (NSMutableString *) initialString
{
    if (!_initialString) _initialString = [[NSMutableString alloc] initWithString:@"LMAO"];
    return _initialString;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self.textView setText:self.initialString];
    if (self.indexindex == -1) {
        self.navigationItem.title = @"Add Item";
    } else {
        self.navigationItem.title = [NSString stringWithFormat:@"Edit row #%d", self.indexindex + 1];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)doneEditing:(id)sender {
    id controller = self.navigationController.viewControllers[1];
    [controller doneWithString: self.textView.text atIndex:self.indexindex];
    [self.navigationController popViewControllerAnimated:YES];
}

@end
