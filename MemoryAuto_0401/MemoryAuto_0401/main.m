//
//  main.m
//  MemoryAuto_0401
//
//  Created by pan dabo on 14-4-1.
//  Copyright (c) 2014年 pan dabo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        //        Person *person = [[Person alloc]init];
        //        [person autorelease];
        //        NSLog(@"in the pool");
    }
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    Person *person = [[Person alloc]init];
    [person autorelease];
    NSLog(@"in the pool");
    
    [person retain];
    
    NSLog(@"person retainCount  = %ld",[person retainCount]);
    
    [pool release];
    
    NSLog(@"exit the pool");
    NSLog(@"person retainCount  = %ld",[person retainCount]);
    
    return 0;
}

