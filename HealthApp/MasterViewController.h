//
//  MasterViewController.h
//  HealthApp
//
//  Created by William Wettersten on 7/26/15.
//  Copyright (c) 2015 William Wettersten. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "TableViewCell.h"
#import "Symptom.h"


@class DetailViewController;

@interface MasterViewController : UITableViewController <UITableViewDataSource, UITableViewDelegate>

@property (strong, nonatomic) DetailViewController *detailViewController;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property (nonatomic, retain) NSMutableArray *tableData;

@end

