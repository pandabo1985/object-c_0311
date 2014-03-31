//
//  Laptop.m
//  MemoryDeom_0330
//
//  Created by pan dabo on 14-3-31.
//  Copyright (c) 2014年 pan dabo. All rights reserved.
//

#import "Laptop.h"

@implementation Laptop

//-(void)setCpu:(Cpu *)cpu
//{
//   
//  _cpu = cpu;
//}

//-(void)setCpu:(Cpu *)cpu
//{
//  
//    _cpu = [cpu retain];
//    
//}

//-(void)setCpu:(Cpu *)cpu
//{
//    [_cpu release];
//     _cpu = [cpu retain];
//
//}
-(void)setCpu:(Cpu *)cpu
{
    if(_cpu !=cpu){
    [_cpu release];
        _cpu = [cpu retain];
    }
    
}
-(Cpu *)cpu
{
    return _cpu;
}

-(void)dealloc
{
    NSLog(@"Laptop DEALLOC! %@",_cpu);
    [_cpu release];
    [super dealloc];
}

@end
