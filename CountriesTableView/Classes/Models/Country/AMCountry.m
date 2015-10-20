//
//  AMCountry.m
//  CountriesTableView
//
//  Created by Mark on 11.10.15.
//  Copyright © 2015 ThinkMobiles. All rights reserved.
//

#import "AMCountry.h"

@implementation AMCountry

- (instancetype)initWithCountryName:(NSString *)name flagImage:(UIImage *)flag capital:(NSString *)capital andDetails:(NSString *)details
{
    self = [super init];
    if (self) {
        _countryName = name;
        _countryCapital = capital;
        _countryFlagImage = flag;
        _countryDetails = details;
    }
    return self;
}

+ (instancetype)countryWithCountryName:(NSString *)name flagImage:(UIImage *)flag capital:(NSString *)capital andDetails:(NSString *)details
{
    return [[self alloc] initWithCountryName:name flagImage:flag capital:capital andDetails:details];
}

@end
