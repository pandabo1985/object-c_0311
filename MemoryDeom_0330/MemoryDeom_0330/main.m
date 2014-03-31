//
//  main.m
//  MemoryDeom_0330
//
//  Created by pan dabo on 14-3-31.
//  Copyright (c) 2014年 pan dabo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Cpu.h"
#import "Laptop.h"

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        Person *person = [[Person alloc] init];
        NSLog(@"person : %ld",[person retainCount]);
        
        [person retain];
        NSLog(@"person : %ld",[person retainCount]);
        
        [person retain];
        NSLog(@"person : %ld",[person retainCount]);
        [person release];
        NSLog(@"person : %ld",[person retainCount]);
        [person release];
        [person release];
        
        
        NSLog(@"person : %ld",[person retainCount]);
        
        Cpu *powerPC = [[Cpu alloc] init];
        [powerPC setCID:100];
        Laptop *apple = [[Laptop alloc] init];
        [apple setCpu:powerPC];
        [powerPC release];
        
        Cpu *intelCpu = [[Cpu alloc] init];
        [intelCpu setCID:101];
        [apple setCpu:intelCpu];

        [apple setCpu:intelCpu];//需要考虑
        
        [intelCpu release];
        NSLog(@"cpu count = %ld",[[apple cpu] retainCount]);
        
        NSLog(@"apple cpu id = %d",[[apple cpu] cID]);
        [apple release];
//        NSLog(@"cpu count = %ld",[powerPC retainCount]);
        
    }
    return 0;
}

