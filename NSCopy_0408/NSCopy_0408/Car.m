//
//  Car.m
//  NSCopy_0408
//
//  Created by pan dabo on 14-4-9.
//  Copyright (c) 2014年 pan dabo. All rights reserved.
//

#import "Car.h"
#import "Engine.h"

@implementation Car

- (id)copyWithZone:(NSZone *)zone
{
    //    /*****浅拷贝****/
    //    Car *car = [[[Car class] allocWithZone:zone] init];
    //    car.engine = _engine;
    //    car.weight = _weight;
    //    car.name = _name;
    
    //    /*****深拷贝****/
    //    Car *car = [[[Car class] allocWithZone:zone] init];
    //    Engine *engin =[_engine copy];
    //    NSNumber *weight =[_weight copy];
    //    NSString *name =[_name copy];
    //
    //    car.engine = engin;
    //    car.weight = weight;
    //    car.name = name;
    //
    //    [engin release];
    //    [weight release];
    //    [name release];
    
    /*****深拷贝****/
    Car *car = [[[Car class] allocWithZone:zone] init];
    car.engine = _engine;
    car.weight = _weight;
    car.name = _name;
    
    return car;
}

-(void)dealloc{
    [_name release];
    [_engine release];
    [_weight release];
    [super dealloc];
    NSLog(@"car dealloc!");
}

@end
