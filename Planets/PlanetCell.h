//
//  PlanetCell.h
//  Planets
//
//  Created by EVERIS on 21/11/17.
//  Copyright © 2017 EVERIS. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface PlanetCell : UITableViewCell 
@property (weak, nonatomic) IBOutlet UIImageView *ImageViewPlanet;
@property (weak, nonatomic) IBOutlet UILabel *labelTitle;
@property (weak, nonatomic) IBOutlet UILabel *labelDescription;

@end
