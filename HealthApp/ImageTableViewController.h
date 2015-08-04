//
//  ImageTableViewController.h
//  HealthApp
//
//  Created by William Wettersten on 7/29/15.
//  Copyright (c) 2015 William Wettersten. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AWSCore/AWSCore.h>

#import "ImageTableViewCell.h"

@interface ImageTableViewController : UITableViewController <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, retain) NSMutableArray *tableData;

@end
