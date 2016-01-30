//
//  ATMLViewController.m
//  UIKitCatalog
//
//  Created by Pasha on 1/29/16.
//  Copyright © 2016 f. All rights reserved.
//

#import "ATMLViewController.h"

@implementation ATMLViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [[TML sharedInstance] registerObjectWithReusableLocalizedStrings:self];
}

#pragma mark - TML
- (void)updateReusableTMLStrings {
    [super updateReusableTMLStrings];
    [self viewDidLoad];
}

@end
