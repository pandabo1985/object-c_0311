//
//  main.m
//  ClassAndObject_0316
//
//  Created by pan dabo on 14-3-16.
//  Copyright (c) 2014年 pan dabo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        //代码区：存放代码。数据区：静态变量和字符串常量。堆区：局部变量。栈区：alloc对象。
        Person *person = [[Person alloc] initWithAge:18 identify:2011];
        NSLog(@"person age = %d identify = %d",[person age],[person identify]);
        [person setAge:26];
        NSLog(@"person age = %d",[person age]);
        Person *person_1 = [[Person alloc] init];
        NSLog(@"person_1 : %p",person_1);
    }
    return 0;
}

