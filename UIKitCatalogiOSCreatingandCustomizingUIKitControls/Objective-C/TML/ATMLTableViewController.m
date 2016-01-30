//
//  ATMLTableViewController.m
//  UIKitCatalog
//
//  Created by Pasha on 1/29/16.
//  Copyright © 2016 f. All rights reserved.
//

#import "ATMLTableViewController.h"

@implementation ATMLTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [[TML sharedInstance] registerObjectWithReusableLocalizedStrings:self];
}

#pragma mark - TML
- (void)updateReusableTMLStrings {
    [super updateReusableTMLStrings];
    [self.tableView reloadData];
}

@end
