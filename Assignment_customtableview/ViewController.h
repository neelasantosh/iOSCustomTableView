//
//  ViewController.h
//  Assignment_customtableview
//
//  Created by Rajesh on 11/12/15.
//  Copyright (c) 2015 CDAC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDataSource,UITabBarDelegate>
@property (strong, nonatomic) IBOutlet UITextField *textFieldBookName;
@property (strong, nonatomic) IBOutlet UITextField *textFieldAuthor;
@property (strong, nonatomic) IBOutlet UITextField *textFieldprice;
@property (strong, nonatomic) IBOutlet UISwitch *switchEnabled;
@property (strong, nonatomic) IBOutlet UILabel *label1;

@property NSMutableArray * arrayData;

@property (strong, nonatomic) IBOutlet UITableView *tableViewData;
- (IBAction)buttonAdd:(id)sender;
- (IBAction)switchEnabled:(id)sender;

@end

