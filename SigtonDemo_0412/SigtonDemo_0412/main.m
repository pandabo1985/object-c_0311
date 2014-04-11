//
//  main.m
//  SigtonDemo_0412
//
//  Created by pan dabo on 14-4-12.
//  Copyright (c) 2014年 pan dabo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UserContext.h"

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        UserContext *userContext1 = [UserContext shareUserContext];
        NSLog(@"userContext1 = %p",userContext1);
        UserContext *userContext2 = [[UserContext alloc] init];
        NSLog(@"userContext2 = %p",userContext2);
        UserContext *userContext3 = [[UserContext alloc] init];
        NSLog(@"userContext3 = %p",userContext3);
        UserContext *userContext4 = [[UserContext alloc] init];
        NSLog(@"userContext4 = %p",userContext4);
        
        [userContext4 release];
        [userContext4 release];
        NSLog(@"userContext4 = %ld",[userContext4 retainCount]);
        [userContext4 autorelease];
        NSLog(@"userContext4 = %ld",[userContext4 retainCount]);
        
    }
    return 0;
}

