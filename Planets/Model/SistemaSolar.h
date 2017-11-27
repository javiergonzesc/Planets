//
//  SistemaSolar.h
//  Planets
//
//  Created by EVERIS on 21/11/17.
//  Copyright © 2017 EVERIS. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Planeta;

@interface SistemaSolar : NSObject

@property(strong,nonatomic) NSMutableArray <Planeta *> *Planetas; //puede ser más generica y no decirle de que tipo es haría falta castear.
+(NSMutableArray *) crearUniverso;


@end
