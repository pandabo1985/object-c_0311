//
//  main.m
//  InheritanceAndOverload_0325
//
//  Created by pan dabo on 14-3-25.
//  Copyright (c) 2014年 pan dabo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ClassB.h"
#import "Rectangle.h"
#import "Square.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        ClassB *b = [[ClassB alloc] init];
        [b initVar];
        [b printVar];
        
        Rectangle *rectangle = [[Rectangle alloc] init];
        [rectangle setWidth:4 andHeight:5];
        NSLog(@"rectangle area = %d",[rectangle area]);
        NSLog(@"rectangle perimeter = %d",[rectangle perimter]);
        
        Square *square = [[Square alloc] init];
        NSLog(@"Square area = %d",[square area]);
        NSLog(@"Square perimeter = %d",[square perimter]);
        [square setSide:6];
        NSLog(@"Square area = %d",[square area]);
        NSLog(@"Square perimeter = %d",[square perimter]);
        
        
    }
    return 0;
}

