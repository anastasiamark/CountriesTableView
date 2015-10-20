//
//  AMCountryDetailsControllerViewController.m
//  CountriesTableView
//
//  Created by Mark on 12.10.15.
//  Copyright © 2015 ThinkMobiles. All rights reserved.
//

#import "AMCountryDetailsController.h"

#import "AMCountry.h"

@interface AMCountryDetailsController ()

@property (weak, nonatomic) IBOutlet UILabel *detailsLabel;

@end

@implementation AMCountryDetailsController

#pragma mark - Lifecycke

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        self.navigationItem.title = @"Details";
    }
    return self;
}

#pragma mark - View Lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self fillFieldsWithCurrentCountry];
}

#pragma mark - Actions

- (void)fillFieldsWithCurrentCountry
{
    self.detailsLabel.text = self.currentCountry.countryDetails;
}

@end
