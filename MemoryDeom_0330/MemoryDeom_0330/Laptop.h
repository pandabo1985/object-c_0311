//
//  Laptop.h
//  MemoryDeom_0330
//
//  Created by pan dabo on 14-3-31.
//  Copyright (c) 2014年 pan dabo. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Cpu;

@interface Laptop : NSObject
{
    @private
    Cpu *_cpu;
}

-(void)setCpu:(Cpu *)cpu;
-(Cpu *)cpu;
@end
