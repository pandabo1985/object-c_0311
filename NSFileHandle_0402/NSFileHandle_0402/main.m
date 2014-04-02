//
//  main.m
//  NSFileHandle_0402
//
//  Created by pan dabo on 14-4-2.
//  Copyright (c) 2014年 pan dabo. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    
 

    @autoreleasepool {
        NSString *homePaht = NSHomeDirectory();
//        NSString *homePaht = @"/Users/pandabo/panda";//首先创建文件

        NSLog(@"homePath = %@",homePaht);
        NSString *filePath = [homePaht stringByAppendingPathComponent:@"panda/panda.txt"];
        NSLog(@"filePath = %@",filePath);
        NSFileHandle *fileHandle = [NSFileHandle fileHandleForUpdatingAtPath:filePath];
        [fileHandle seekToEndOfFile];
//        [fileHandle seekToFileOffset:30];
        NSString *str = @"12345678";
        NSData *data = [str dataUsingEncoding:NSUTF8StringEncoding];
        [fileHandle writeData:data];
        
        [fileHandle closeFile];
    
        NSFileHandle *fileHandle_2 = [NSFileHandle fileHandleForReadingAtPath:filePath];
        NSUInteger length = [fileHandle_2 availableData].length;
        [fileHandle_2 seekToFileOffset:length/2];
        NSData *data_2 = [fileHandle_2 readDataToEndOfFile];
        NSString *str_2 = [[NSString alloc] initWithData:data_2 encoding:NSUTF8StringEncoding];
        NSLog(@"str_2 = %@",str_2);
        
        NSString *targetPath = [homePaht stringByAppendingPathComponent:@"panda/panda_copy.txt"];
        NSLog(@"targetPath = %@",targetPath);
        NSFileManager *fileManager_03 = [NSFileManager defaultManager];
        
        BOOL success = [fileManager_03 createFileAtPath:targetPath contents:nil attributes:nil];
        if (success) {
            NSLog(@"create file success!");
        }
        
        NSFileHandle *outFileHandle = [NSFileHandle fileHandleForWritingAtPath:targetPath];
        NSFileHandle *inFileHandle = [NSFileHandle fileHandleForReadingAtPath:filePath];
        
        NSData *inData = [inFileHandle readDataToEndOfFile];
        [outFileHandle writeData:inData];

        [inFileHandle closeFile];
        [outFileHandle closeFile];
        
    }
    return 0;
}

