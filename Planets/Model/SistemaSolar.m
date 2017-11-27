//
//  SistemaSolar.m
//  Planets
//
//  Created by EVERIS on 21/11/17.
//  Copyright © 2017 EVERIS. All rights reserved.
//

#import "SistemaSolar.h"
#import "Planeta.h"
@implementation SistemaSolar


+(NSMutableArray <Planeta *> *)crearUniverso{
     NSMutableArray * galaxia=[[NSMutableArray alloc]init];
     NSString * path =[[NSBundle mainBundle] pathForResource:@"planetas" ofType:@"plist"];
     NSDictionary * dictionary=[[NSDictionary alloc]initWithContentsOfFile:path ];
     NSArray * arrayNombres=[dictionary[@"nombres"]mutableCopy];
     NSArray * arrayImagenes=[dictionary[@"imagenes"]mutableCopy];
     NSArray * arrayDescripcion=[dictionary[@"descripcion"]mutableCopy];
    
    
   
    for (int i=0;i<arrayNombres.count;i++) {
        Planeta * planeta = [[Planeta alloc]init];
        planeta.nombre=arrayNombres[i];
        planeta.descripcion=arrayDescripcion[i];
        planeta.imagenes=arrayImagenes[i];
        galaxia[i]=planeta;
                        
    };
    
       /* NSArray * llave=dictionary.allKeys;
        for(int i=0;i<llave.count ;i++){
           NSString * propertyList= llave[i];
            if([propertyList isEqualToString:@"nombres"]){
                NSString * valor=llave[i];
                NSArray * arrayNombres=dictionary[valor];
                for(int i=0;i<arrayNombres.count;i++){
                    
                }
            }*/
    return galaxia;
    }
    



@end

