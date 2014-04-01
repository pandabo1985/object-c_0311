//
//  Person.m
//  MemoryAuto_0401
//
//  Created by pan dabo on 14-4-1.
//  Copyright (c) 2014年 pan dabo. All rights reserved.
//

#import "Person.h"

@implementation Person

-(void)dealloc
{
    NSLog(@"person dealloc");
    [super dealloc];
}

@end
