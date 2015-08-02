//
//  DetailViewController.h
//  HealthApp
//
//  Created by William Wettersten on 7/26/15.
//  Copyright (c) 2015 William Wettersten. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "Symptom.h"
#import "ImageTableViewController.h"

@interface DetailViewController : UIViewController

@property (strong, nonatomic) Symptom* detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@property (strong, nonatomic) IBOutlet UITableView *imageTable;

@property (strong, nonatomic) IBOutlet ImageTableViewController *imageTableViewController;

@end

