//
//  DetailViewController.m
//  Planets
//
//  Created by EVERIS on 22/11/17.
//  Copyright © 2017 EVERIS. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self loadPlanetFromTableView];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void) loadPlanetFromTableView{
    self.labelTitulo.text=self.planeta.nombre;
    self.UIImagePlaneta.image=[UIImage imageNamed:self.planeta.imagenes];
    self.labelDescripcion.text=self.planeta.descripcion;
}





/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
