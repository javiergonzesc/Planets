//
//  DetailViewController.h
//  Planets
//
//  Created by EVERIS on 22/11/17.
//  Copyright © 2017 EVERIS. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Planeta.h"
@interface DetailViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *UIImagePlaneta;
@property (weak, nonatomic) IBOutlet UILabel *labelDescripcion;
@property (weak, nonatomic) IBOutlet UILabel *labelTitulo;
@property (strong, nonatomic) Planeta * planeta;

@end
