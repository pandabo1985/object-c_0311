//
//  Person.m
//  CarDemo_0326
//
//  Created by pan dabo on 14-3-26.
//  Copyright (c) 2014年 pan dabo. All rights reserved.
//

#import "Person.h"
#import "Car.h"

@implementation Person

-(void)driver:(Car *) car
{
    [car run];
}

@end
