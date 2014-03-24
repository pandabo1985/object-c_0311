//
//  Person.m
//  PersonGet_0324
//
//  Created by pan dabo on 14-3-24.
//  Copyright (c) 2014年 pan dabo. All rights reserved.
//

#import "Person.h"

static int gCount = 10;

@implementation Person

@synthesize age;

-(int)myNumber
{
    return myNumber;
}
-(void)setMyNuber:(int)_number
{
    myNumber = _number;
    gCount = 10;
}
-(void)printInfo
{
    NSLog(@"myNumber is %d",myNumber);
}

@end
