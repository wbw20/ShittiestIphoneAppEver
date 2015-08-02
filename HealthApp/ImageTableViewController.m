//
//  ImageTableViewController.m
//  HealthApp
//
//  Created by William Wettersten on 7/29/15.
//  Copyright (c) 2015 William Wettersten. All rights reserved.
//

#import "ImageTableViewController.h"

@interface ImageTableViewController ()

@end

@implementation ImageTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableData = [[NSMutableArray alloc] init];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.tableData count];
}

- (void)insertNewObject:(id)sender {
    [self.tableData insertObject:[NSDate date] atIndex:0];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    ImageTableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"ImageCell"];
    
    if (cell == nil) {
        cell = [[ImageTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"ImageCell"];
    }
    
    cell.clipsToBounds = true;
    
    UIImageView *av = [[UIImageView alloc] init];
    av.opaque = NO;
    av.image = [UIImage imageNamed:@"cat.jpeg"];
    av.contentMode = UIViewContentModeScaleAspectFill;
    cell.backgroundView = av;
    
    return cell;
}

@end
