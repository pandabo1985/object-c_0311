//
//  main.m
//  KVO_0413
//
//  Created by pan dabo on 14-4-13.
//  Copyright (c) 2014年 pan dabo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Child.h"
#import "Nurse.h"
#import "UserFile.h"

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        
//        Child *child = [[Child alloc] init];
//        NSLog(@"child = %ld",[child retainCount]);
//        Nurse *nurse = [[Nurse alloc] initWithChild:child];
//        NSLog(@"child = %ld",[child retainCount]);
//        [[NSRunLoop currentRunLoop] run];
        
        UserFile *userFile = [[UserFile alloc] init];
        [userFile doCopy];
        
    }
    return 0;
}

