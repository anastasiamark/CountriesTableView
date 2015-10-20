//
//  AMContinentService.m
//  CountriesTableView
//
//  Created by Mark on 19.10.15.
//  Copyright © 2015 ThinkMobiles. All rights reserved.
//

#import "AMContinentService.h"

#import "AMCountry.h"
#import "AMContinent.h"

@implementation AMContinentService

+ (NSArray *)continentArray
{
    AMContinent *continent1 = [AMContinent continentWithContinentName:@"Europe" andCountries:[self countriesOfEurope]];
    AMContinent *continent2 = [AMContinent continentWithContinentName:@"Asia" andCountries:[self countriesOfAsia]];
    AMContinent *continent3 = [AMContinent continentWithContinentName:@"N.America" andCountries:[self countriesOfNAmerica]];
    AMContinent *continent4 = [AMContinent continentWithContinentName:@"Oceania" andCountries:[self countriesOfOceania]];
    
    return @[continent1, continent2, continent3, continent4];
}

+ (NSArray *)countriesOfEurope
{
    AMCountry *country1 = [AMCountry countryWithCountryName:NSLocalizedString(@"Ukraine", nil) flagImage:[UIImage imageNamed:@"Flag_of_Ukraine.svg"] capital:@"Kiev" andDetails:@"Ukraine is a country in Eastern Europe, bordered by Russia to the east and northeast, Belarus to the northwest, Poland and Slovakia to the west, Hungary, Romania, and Moldova to the southwest, and the Black Sea and Sea of Azov to the south and southeast, respectively. It has an area of 603,628 km2 (233,062 sq mi), making it the largest country entirely within Europe and the 46th largest country in the world. With a population of about 44.5 million, Ukraine is the 32nd most populous country in the world."];
    AMCountry *country2 = [AMCountry countryWithCountryName:NSLocalizedString(@"United Kingdom", nil) flagImage:[UIImage imageNamed:@"Flag_of_the_United_Kingdom.svg"]capital:@"London" andDetails:@"The United Kingdom of Great Britain and Northern Ireland, commonly known as the United Kingdom (UK) or Britain, is a sovereign state in Europe. Lying off the north-western coast of the European mainland, the country includes the island of Great Britain—a term also applied loosely to refer to the whole country—the north-eastern part of the island of Ireland and many smaller islands. Northern Ireland is the only part of the UK that shares a land border with another state (the Republic of Ireland). Apart from this land border, the UK is surrounded by the Atlantic Ocean, with the North Sea to its east, the English Channel to its south and the Celtic Sea to its south-southwest. The Irish Sea lies between Great Britain and Ireland. The UK has an area of 93,800 square miles (243,000 km2), making it the 80th-largest sovereign state in the world and the 11th-largest in Europe."];
    AMCountry *country3 = [AMCountry countryWithCountryName:NSLocalizedString(@"Germany", nil) flagImage:[UIImage imageNamed:@"Flag_of_Germany.svg"] capital:@"Berlin" andDetails:@"Germany is a federal parliamentary republic in western-central Europe. It includes 16 constituent states and covers an area of 357,021 square kilometres (137,847 sq mi) with a largely temperate seasonal climate. Its capital and largest city is Berlin. With 81 million inhabitants, Germany is the most populous member state in the European Union. After the United States, it is the second most popular migration destination in the world."];
    return @[country1, country2, country3];
}

+ (NSArray *)countriesOfAsia
{
    AMCountry *country1 = [AMCountry countryWithCountryName:NSLocalizedString(@"Turkey", nil) flagImage:[UIImage imageNamed:@"Flag_of_Turkey.svg"] capital:@"Ankara" andDetails:@"Turkey is a parliamentary republic in Eurasia, largely located in Western Asia, with the smaller portion of Eastern Thrace in Southeast Europe. Turkey is bordered by eight countries: Syria and Iraq to the south; Iran, Armenia, and the Azerbaijani exclave of Nakhchivan to the east; Georgia to the northeast; Bulgaria to the northwest; and Greece to the west. The Black Sea is to the north, the Mediterranean Sea to the south, and the Aegean Sea to the west. The Bosphorus, the Sea of Marmara, and the Dardanelles (which together form the Turkish Straits) demarcate the boundary between Thrace and Anatolia; they also separate Europe and Asia. Turkey's location at the crossroads of Europe and Asia makes it a country of significant geostrategic importance."];
    AMCountry *country2 = [AMCountry countryWithCountryName:NSLocalizedString(@"China", nil) flagImage:[UIImage imageNamed:@"Flag_of_the_People's_Republic_of_China.svg"] capital:@"Beijing" andDetails:@"China, officially the People's Republic of China (PRC), is a sovereign state in East Asia. It is the world's most populous country, with a population of over 1.35 billion. The PRC is a single-party state governed by the Communist Party of China, with its seat of government in the capital city of Beijing. It exercises jurisdiction over 22 provinces, five autonomous regions, four direct-controlled municipalities (Beijing, Tianjin, Shanghai and Chongqing), and two mostly self-governing special administrative regions (Hong Kong and Macau). The PRC also claims the territories governed by the Republic of China (ROC), a separate political entity today commonly known as Taiwan, as a part of its territory, which includes the island of Taiwan as Taiwan Province, Kinmen and Matsu as a part of Fujian Province and islands the ROC controls in the South China Sea as a part of Hainan Province and Guangdong Province. These claims are controversial because of the complex political status of Taiwan."];
    AMCountry *country3 = [AMCountry countryWithCountryName:NSLocalizedString(@"India", nil) flagImage:[UIImage imageNamed:@"Flag_of_India.svg"] capital:@"New Delhi" andDetails:@"India, officially the Republic of India, is a country in South Asia. It is the seventh-largest country by area, the second-most populous country with over 1.2 billion people, and the most populous democracy in the world. India is a federal constitutional republic governed under a parliamentary system consisting of 29 states and 7 union territories. A pluralistic, multilingual, and multi-ethnic society, the country is also home to a diversity of wildlife in a variety of protected habitats. Bounded by the Indian Ocean on the south, the Arabian Sea on the south-west, and the Bay of Bengal on the south-east, it shares land borders with Pakistan to the west; China, Nepal, and Bhutan to the north-east; and Myanmar (Burma) and Bangladesh to the east. In the Indian Ocean, India is in the vicinity of Sri Lanka and the Maldives; in addition, India's Andaman and Nicobar Islands share a maritime border with Thailand and Indonesia."];
    return @[country1, country2, country3];
}

+ (NSArray *)countriesOfNAmerica
{
    AMCountry *country1 = [AMCountry countryWithCountryName:NSLocalizedString(@"USA", nil) flagImage:[UIImage imageNamed:@"Flag_of_the_United_States.svg"] capital:@"Washington" andDetails:@"The United States of America (USA), commonly referred to as the United States (U.S.) or America, is a federal republic composed of 50 states, a federal district, five major territories and various possessions. The 48 contiguous states and Washington, D.C., are in central North America between Canada and Mexico."];
    AMCountry *country2 = [AMCountry countryWithCountryName:NSLocalizedString(@"Mexico", nil) flagImage:[UIImage imageNamed:@"Flag_of_Mexico.svg"] capital:@"Mexico City" andDetails:@"Mexico is a federal republic in North America. It is bordered on the north by the United States; on the south and west by the Pacific Ocean; on the southeast by Guatemala, Belize, and the Caribbean Sea; and on the east by the Gulf of Mexico."];
    AMCountry *country3 = [AMCountry countryWithCountryName:NSLocalizedString(@"Costa Rica", nil) flagImage:[UIImage imageNamed:@"Flag_of_Costa_Rica.svg"] capital:@"San  Jose" andDetails:@"Costa Rica is a country in Central America, bordered by Nicaragua to the north, Panama to the southeast, the Pacific Ocean to the west, the Caribbean Sea to the east, and Ecuador to the south of Cocos Island. It has a population of around 4.5 million, of whom nearly a quarter live in the metropolitan area of the capital and largest city, San José."];
    return @[country1, country2, country3];
}

+ (NSArray *)countriesOfOceania
{
    AMCountry *country1 = [AMCountry countryWithCountryName:NSLocalizedString(@"Australia", nil) flagImage:[UIImage imageNamed:@"Flag_of_Australia.svg"] capital:@"Canberra" andDetails:@"Australia  is an Oceanian country comprising the mainland of the Australian continent, the island of Tasmania, and numerous smaller islands. It is the world's sixth-largest country by total area. Neighbouring countries include Papua New Guinea, Indonesia and East Timor to the north; the Solomon Islands and Vanuatu to the north-east; and New Zealand to the south-east."];
    AMCountry *country2 = [AMCountry countryWithCountryName:NSLocalizedString(@"New Zealand", nil) flagImage:[UIImage imageNamed:@"Flag_of_New_Zealand.svg"] capital:@"Wellington" andDetails:@"New Zealand is an island country in the southwestern Pacific Ocean. The country geographically comprises two main landmasses – that of the North Island, or Te Ika-a-Māui, and the South Island, or Te Waipounamu – and numerous smaller islands. New Zealand is situated some 1,500 kilometres (900 mi) east of Australia across the Tasman Sea and roughly 1,000 kilometres (600 mi) south of the Pacific island areas of New Caledonia, Fiji, and Tonga. Because of its remoteness, it was one of the last lands to be settled by humans. During its long isolation, New Zealand developed a distinctive biodiversity of animal, fungal and plant life. The country's varied topography and its sharp mountain peaks, such as the Southern Alps, owe much to the tectonic uplift of land and volcanic eruptions. New Zealand's capital city is Wellington, while its most populous city is Auckland."];
    return @[country1, country2];
}

@end
