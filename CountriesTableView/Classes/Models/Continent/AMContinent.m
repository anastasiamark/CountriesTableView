//
//  AMContinent.m
//  CountriesTableView
//
//  Created by Mark on 18.10.15.
//  Copyright © 2015 ThinkMobiles. All rights reserved.
//

#import "AMContinent.h"

#import "AMCountry.h"

@implementation AMContinent

#pragma mark - Lifecycle

- (instancetype)initWithContinentName:(NSString *)continentName andCountries:(NSArray *)countriesArray
{
    self = [super init];
    if (self) {
        _continentName = continentName;
        _countriesList = [NSArray arrayWithArray:countriesArray];
    }
    return self;

}

+ (instancetype)continentWithContinentName:(NSString *)continentName andCountries:(NSArray *)countriesArray
{
    return [[self alloc] initWithContinentName:continentName andCountries:(NSArray *)countriesArray];
}

@end
