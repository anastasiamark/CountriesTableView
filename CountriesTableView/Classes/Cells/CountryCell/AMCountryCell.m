//
//  AMCountryCell.m
//  CountriesTableView
//
//  Created by Mark on 11.10.15.
//  Copyright © 2015 ThinkMobiles. All rights reserved.
//

#import "AMCountryCell.h"

#import "AMCountry.h"

@interface AMCountryCell ()

@property (weak, nonatomic) IBOutlet UILabel *countryNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *countryCapitalLabel;
@property (weak, nonatomic) IBOutlet UIImageView *flagImageView;

@end

@implementation AMCountryCell

#pragma mark - Actions

- (void)configureWithCountry:(AMCountry *)country
{
    self.countryNameLabel.text = country.countryName;
    self.countryCapitalLabel.text = country.countryCapital;
    self.flagImageView.image = country.countryFlagImage;
}

@end
