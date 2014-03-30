//
//  main.m
//  DelegateFindHouse_0330
//
//  Created by pan dabo on 14-3-30.
//  Copyright (c) 2014年 pan dabo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Agent.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Agent *agent = [[Agent alloc] init];
        Person *person = [[Person alloc] initWihtName:@"jack" withDelegate:agent];
        
        [person wantToFindApartment];
        BOOL isTrue = YES;
        while (isTrue) {
            NSDate *date = [NSDate date];
            [[NSRunLoop currentRunLoop] runUntilDate:[date dateByAddingTimeInterval:6]];
            isTrue = NO;
            NSLog(@"application exit 0");
        }
        
        [[NSRunLoop currentRunLoop] run];
    }
    return 0;
}

