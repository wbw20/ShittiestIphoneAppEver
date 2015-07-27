//
//  DetailViewController.h
//  HealthApp
//
//  Created by William Wettersten on 7/26/15.
//  Copyright (c) 2015 William Wettersten. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

