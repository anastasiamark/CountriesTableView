//
//  CountriesListController.m
//  CountriesTableView
//
//  Created by Mark on 11.10.15.
//  Copyright © 2015 ThinkMobiles. All rights reserved.
//

#import "AMCountriesListController.h"
#import "AMCountryDetailsController.h"

#import "AMCountryCell.h"

#import "AMCountry.h"
#import "AMContinent.h"

#import "AMContinentService.h"

@interface AMCountriesListController ()<UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *countriesTableView;

@property (strong, nonatomic) NSArray *continentList;


@end

@implementation AMCountriesListController

#pragma mark - Accessors

- (NSArray *)continentList
{
    if (!_continentList) {
        _continentList = [AMContinentService continentArray];
    }
    return _continentList;
}

#pragma mark - Lifecycke

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        self.navigationItem.title = @"Countries List";
    }
    return self;
}

#pragma mark - View Lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
}

#pragma mark - UITableViewDataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return self.continentList.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    AMContinent *currentContinent = self.continentList[section];
    
    return currentContinent.countriesList.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    AMCountryCell *cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass([AMCountryCell class]) forIndexPath:indexPath];
    
    AMContinent *currentContinent = self.continentList[indexPath.section];
    
    AMCountry *currentCountry = currentContinent.countriesList[indexPath.row];
    [cell configureWithCountry:currentCountry];
    
    return cell;
}

- (nullable NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    AMContinent *currentContinent = self.continentList[section];
    return currentContinent.continentName;
}

#pragma mark - UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    AMCountryDetailsController *controller = [self.storyboard instantiateViewControllerWithIdentifier:NSStringFromClass([AMCountryDetailsController class])];
    AMContinent *currentContinent = self.continentList[indexPath.section];
    controller.currentCountry = currentContinent.countriesList[indexPath.row];
    [self.navigationController pushViewController:controller animated:YES];
}

@end
