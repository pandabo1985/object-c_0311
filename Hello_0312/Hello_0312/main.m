//
//  main.m
//  Hello_0312
//
//  Created by pan dabo on 14-3-12.
//  Copyright (c) 2014年 pan dabo. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Person.h"
//The basic data type and variable

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        NSLog(@"Hello, World!");
        
        int i = 100;//局部变量
        NSLog(@"i = %d",i);
    }
    
    for (int i= 0; i <10; i++) {
        NSLog(@"i = %d",i);
    }
    
    Person *person = [[Person alloc] init];
    NSLog(@"person.age = %d",[person getAge]);
    [person setAge:29];
    NSLog(@"person.age = %d",[person getAge]);
    
    float f = 2.13f;
    double d = 3.14123e+12;
    char c = 'c';
    NSLog(@"f = %.1f",f);
    NSLog(@"d = %e",d);
    NSLog(@"c = %c",c);
    NSLog(@"c-->ASCII = %d",c);
    int i = 0;
    NSLog(@"size of i = %ld",sizeof(i));
    NSLog(@"size of f = %ld",sizeof(f));
    NSLog(@"size of d = %ld",sizeof(d));
    NSLog(@"size of c = %ld",sizeof(c));
    
    int i1 = 123;
    int i2 = 124;
    double d1 = (i1 + i2) * 1.5;
    NSLog(@"d1 = %f",d1);
    float f1 = (float)((i1 + i2) * 1.5);
    NSLog(@"f1 = %f",f1);
    
    Byte b1 = 146;
    Byte b2 = 120;
    Byte b3 = (Byte)(b1 + b2);
    NSLog(@"b3 = %d",b3);
    
    double d2 = 1e47;
    float f2 = (float)d2;
    NSLog(@"f2 = %f",f2);
    return 0;
}

