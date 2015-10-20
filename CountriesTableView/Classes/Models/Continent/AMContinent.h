//
//  AMContinent.h
//  CountriesTableView
//
//  Created by Mark on 18.10.15.
//  Copyright © 2015 ThinkMobiles. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AMContinent : NSObject

@property (nonatomic) NSString *continentName;
@property (nonatomic) NSArray *countriesList;

+ (instancetype)continentWithContinentName:(NSString *)continentName andCountries:(NSArray *)countriesArray;

@end
