//
//  main.m
//  PersonGet_0324
//
//  Created by pan dabo on 14-3-24.
//  Copyright (c) 2014年 pan dabo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Person *person = [[Person alloc] init];
        
        [person setMyNuber:10];
        NSLog(@"person's myNumber is %d",[person myNumber]);
        [person setAge:97];
        NSLog(@"person's age is %d",[person age]);
        person.age = 100;
        NSLog(@"person's age is %d",person.age);
    }
    return 0;
}

