//
//  AMCountryCell.h
//  CountriesTableView
//
//  Created by Mark on 11.10.15.
//  Copyright © 2015 ThinkMobiles. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AMCountry;

@interface AMCountryCell : UITableViewCell

- (void)configureWithCountry:(AMCountry *)country;

@end
