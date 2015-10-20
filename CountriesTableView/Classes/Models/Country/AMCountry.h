//
//  AMCountry.h
//  CountriesTableView
//
//  Created by Mark on 11.10.15.
//  Copyright © 2015 ThinkMobiles. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface AMCountry : NSObject

@property (strong, nonatomic) NSString *countryName;
@property (strong, nonatomic) NSString *countryCapital;
@property (strong, nonatomic) NSString *countryDetails;

@property (strong, nonatomic) UIImage *countryFlagImage;


+ (instancetype)countryWithCountryName:(NSString *)name
                             flagImage:(UIImage *)flag
                               capital:(NSString *)capital
                            andDetails:(NSString *)details;

@end
