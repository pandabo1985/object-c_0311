//
//  ClassB.m
//  InheritanceAndOverload_0325
//
//  Created by pan dabo on 14-3-25.
//  Copyright (c) 2014年 pan dabo. All rights reserved.
//

#import "ClassB.h"

@implementation ClassB
-(void)printVar
{
    [super printVar];
    NSLog(@"fuck overload");
    NSLog(@"ClassB x = %d",x);
}

@end
