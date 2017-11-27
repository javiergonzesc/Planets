//
//  ViewController.h
//  Planets
//
//  Created by EVERIS on 20/11/17.
//  Copyright © 2017 EVERIS. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SistemaSolar.h"
#import "Planeta.h"

@interface ViewController : UIViewController < UITableViewDelegate , UITableViewDataSource>
@property (strong, atomic) NSMutableArray * planetas;
@property (strong, atomic) NSMutableArray * planetasImagenes;
@property (strong, atomic) NSMutableArray * planetasDescripcion;
//@property (strong, atomic) NSMutableDictionary * dictionary;
@property (weak, nonatomic) IBOutlet UITableView *tableViewPlanetas;



- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath;
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath;
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath;

- (IBAction)refresh:(UIButton *)sender;


@end

