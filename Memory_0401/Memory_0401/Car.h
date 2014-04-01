//
//  Car.h
//  Memory_0401
//
//  Created by pan dabo on 14-4-1.
//  Copyright (c) 2014年 pan dabo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Vehicle.h"
@class Engine;

@interface Car : Vehicle
{
    Engine *_engine;
}

-(void)setEngin:(Engine *)engine;
-(Engine *)engine;
@end
