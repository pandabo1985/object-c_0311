//
//  main.m
//  NSCoding_0410
//
//  Created by pan dabo on 14-4-10.
//  Copyright (c) 2014年 pan dabo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "User.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        User *user = [[User alloc] init];
        user.name = @"fuck data struck";
        user.email = @"fuck le";
        user.passworld = @"11222";
        NSString *homePath = NSHomeDirectory();
        NSString *userPath = [homePath stringByAppendingPathComponent:@"user.archiver"];
        BOOL success = [NSKeyedArchiver archiveRootObject:user toFile:userPath];
        if (success) {
            NSLog(@"archive user");
        }
        
        User *user2 = [NSKeyedUnarchiver unarchiveObjectWithFile:userPath];
        NSLog(@"user2 = %@",user2);
    }
    return 0;
}

