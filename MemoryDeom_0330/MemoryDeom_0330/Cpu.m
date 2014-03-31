//
//  Cpu.m
//  MemoryDeom_0330
//
//  Created by pan dabo on 14-3-31.
//  Copyright (c) 2014年 pan dabo. All rights reserved.
//

#import "Cpu.h"

@implementation Cpu

-(void)setCID:(int)cID
{
    _cID = cID;
}
-(int)cID
{
    return _cID;
}
-(void)dealloc
{
    NSLog(@"CPU DEALLOC! %d",_cID);
    [super dealloc];
}

@end
