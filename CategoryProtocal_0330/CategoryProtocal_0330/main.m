//
//  main.m
//  CategoryProtocal_0330
//
//  Created by pan dabo on 14-3-30.
//  Copyright (c) 2014年 pan dabo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person+Eate.h"
#import "Person.h"
#import "NSArray+Convert.h"


int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Person *person1= [Person PersonWithName:@"person1"];
        NSLog(@"person1 = %@",person1.name);
        [person1 test];
        [person1 eate];
        [person1 defaultRequiredMethod1];
        [person1 requiredMethod2];
//        [person1 privateMethod];
        
        NSMutableArray *mutableArr = [NSArray arrayFromNumber:1245];
        NSLog(@"mutableArr = %@",mutableArr);
        
    }
    return 0;
}



