//
//  ViewController.m
//  Planets
//
//  Created by EVERIS on 20/11/17.
//  Copyright © 2017 EVERIS. All rights reserved.
//

#import "ViewController.h"
#import "PlanetCell.h"
#import "SistemaSolar.h"
#import "DetailViewController.h"

@interface ViewController ()
-(void)createUniverseWithTable :(UITableView *)tableView;
-(void) alertas :(NSString *) titulo :(NSString *) mensaje;
@property (strong,atomic)NSDictionary * dictionary;
@property (strong,atomic)NSMutableArray <Planeta *> * galaxia;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSString * path =[[NSBundle mainBundle] pathForResource:@"planetas" ofType:@"plist"];
    self.dictionary=[[NSDictionary alloc]initWithContentsOfFile:path ];
    [self createUniverseWithTable :self.tableViewPlanetas];
}
 -(void)createUniverseWithTable :(UITableView *)tableView; {
     
     self.galaxia=[SistemaSolar crearUniverso];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark metodos de UIITableViewdataSource
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [self.galaxia count];
   // return [self.planetas count];
}

-(UITableViewCell *)tableView:(nonnull UITableView * )tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath{
    int indice=(int)indexPath.row;//= NSInteger indice=indexPath.row; bien se consigue la fila
   // NSInteger indice=indexPath.row;
    static NSString *cellIdentifie=@"PanetCell";//creamos un id para la celda( lo ponemos en la vista)
    PlanetCell *cell = (PlanetCell *)[tableView dequeueReusableCellWithIdentifier:cellIdentifie];
   
    
    cell.labelTitle.text=self.galaxia[indice].nombre;
    cell.ImageViewPlanet.image=[UIImage imageNamed:(self.galaxia[indice].imagenes)];
    cell.labelDescription.text=self.galaxia[indice].descripcion;
    return cell;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
   float altura= tableView.frame.size.height;
    float cellsNumber=4.35;
    return altura/cellsNumber;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    PlanetCell* cell=(PlanetCell *)[tableView cellForRowAtIndexPath:indexPath];
    NSString * mensaje= cell.labelDescription.text;
    NSString * titulo=cell.labelTitle.text;
   // [self alertas:titulo : mensaje];
    
}
-(void) alertas :(NSString *)titulo : (NSString *) mensaje{
    UIAlertController * alert =[UIAlertController alertControllerWithTitle: titulo
                                                                   message:mensaje
                                                            preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction * action=[UIAlertAction actionWithTitle:@"action"
                                                    style:UIAlertActionStyleDefault
                                                  handler:^(UIAlertAction * _Nonnull action) {
                                                      //codigo ejecutable
                                                  }];
    [alert addAction:action];
    [self presentViewController:alert animated:YES completion:^{
        //codiogo ejecutable
    }];
}

-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath{
   
    [self.galaxia removeObjectAtIndex:indexPath.row];
    [tableView deleteRowsAtIndexPaths:@[indexPath]withRowAnimation:(UITableViewRowAnimationFade)];
}

- (IBAction)refresh:(UIButton *)sender {
    if(self.planetas.count<9){
   
        
    [self.galaxia removeObjectsInArray:self.galaxia];
    [self createUniverseWithTable:self.tableViewPlanetas];
    [self.tableViewPlanetas reloadSections:[NSIndexSet indexSetWithIndex:0] withRowAnimation:UITableViewRowAnimationFade];
    }
}

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    NSIndexPath * index =self.tableViewPlanetas.indexPathForSelectedRow;
    Planeta * planeta=self.galaxia[index.row];
    DetailViewController * vc=segue.destinationViewController;
    vc.planeta=planeta;
    
}





    @end
    
