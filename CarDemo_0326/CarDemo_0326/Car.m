//
//  Car.m
//  CarDemo_0326
//
//  Created by pan dabo on 14-3-26.
//  Copyright (c) 2014年 pan dabo. All rights reserved.
//

#import "Car.h"

@implementation Car
-(id)init
{
    if (self = [super init]) {
        carID = 102;
        speed = 120;
        name = @"small car";
    }
    return self;
}

-(void)run
{
    NSLog(@"name is %@ == %@ start run",name,[self class]);
}

@end
