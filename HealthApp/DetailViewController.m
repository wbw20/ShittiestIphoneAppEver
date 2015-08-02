//
//  DetailViewController.m
//  HealthApp
//
//  Created by William Wettersten on 7/26/15.
//  Copyright (c) 2015 William Wettersten. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem {
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
            
        // Update the view.
        [self configureView];
    }
}

- (void)configureView {
    self.imageTableViewController = [[ImageTableViewController alloc] init];
    self.imageTable.dataSource = self.imageTableViewController;
    self.imageTable.delegate = self.imageTableViewController;
    
    NSMutableArray *imageArray = [[NSMutableArray alloc] initWithObjects:@"One", @"Two", @"Three", @"Three", @"Three", @"Three", nil];
    self.imageTableViewController.tableData = imageArray;
    [self.imageTable reloadData];
    
    // Update the user interface for the detail item.
    if (self.detailItem) {
        self.detailDescriptionLabel.text = [self.detailItem description];
        self.navigationItem.title = self.detailItem.name;
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
