//
//  ANTableViewController.h
//  homework_1
//
//  Created by Администратор on 11/17/13.
//  Copyright (c) 2013 MSU. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ANTableViewController : UIViewController <UITableViewDataSource, UITableViewDelegate, UIActionSheetDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;

- (void) doneWithString:(NSString *)string atIndex:(NSInteger) iindex;



@end
