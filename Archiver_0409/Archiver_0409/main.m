//
//  main.m
//  Archiver_0409
//
//  Created by pan dabo on 14-4-9.
//  Copyright (c) 2014年 pan dabo. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        ///归档对象
        NSString *homeDirectory = NSHomeDirectory();
        NSArray *array = @[@123,@456,@789,@"abc",@"fuck"];
        NSLog(@"array = %@",array);
        NSString *path = [homeDirectory stringByAppendingPathComponent:@"test.archive"];
        BOOL success = [NSKeyedArchiver archiveRootObject:array toFile:path];
        if (success) {
            NSLog(@"test.archive success!");
        }
        //解归档
        NSArray *array2 = [NSKeyedUnarchiver unarchiveObjectWithFile:path];
        
         NSLog(@"array2 = %@",array2);
        NSLog(@"++++++++++++++++++++++++++++++++");
        NSString *homePath = NSHomeDirectory();
        NSString *filePath = [homePath stringByAppendingPathComponent:@"customContent.archive"];
        NSMutableData *mutableData = [NSMutableData data];
        NSKeyedArchiver *customArchiver = [[NSKeyedArchiver alloc] initForWritingWithMutableData:mutableData];
        [customArchiver encodeObject:@"fuck" forKey:@"action"];
        [customArchiver encodeFloat:50 forKey:@"weight"];
        [customArchiver finishEncoding];
        [customArchiver release];
        [mutableData writeToFile:filePath atomically:YES];
        
        NSData *customData = [NSData dataWithContentsOfFile:filePath];
        NSKeyedUnarchiver *unarchiver = [[NSKeyedUnarchiver alloc] initForReadingWithData:customData];
        
        float weight = [unarchiver decodeFloatForKey:@"weight"];
        NSLog(@"weight = %f",weight);
      
        NSString *actionName = [unarchiver decodeObjectForKey:@"action"];
        NSLog(@"actionName = %@",actionName);
    }
    return 0;
}

