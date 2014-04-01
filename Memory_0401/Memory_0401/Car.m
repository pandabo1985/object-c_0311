//
//  Car.m
//  Memory_0401
//
//  Created by pan dabo on 14-4-1.
//  Copyright (c) 2014年 pan dabo. All rights reserved.
//

#import "Car.h"

@implementation Car

-(void)setEngin:(Engine *)engine
{
    if (_engine !=engine) {
        [_engine release];
        _engine = [engine retain];
    }
}

-(Engine *)engine
{
    return _engine;
}

-(void)dealloc
{
    NSLog(@"dealloc === car");
    [_engine release];
    [super dealloc];
}

@end
