//
//  ReadFileToWrite.m
//  NSFileHandle_0402
//
//  Created by pan dabo on 14-4-7.
//  Copyright (c) 2014年 pan dabo. All rights reserved.
//

#import "ReadFileToWrite.h"

@implementation ReadFileToWrite

-(void)runReadeToWrite
{
    NSString *homePath = NSHomeDirectory();
    NSString *strPath = [homePath stringByAppendingPathComponent:@"Date.txt"];
    NSString *writePaht = [homePath stringByAppendingPathComponent:@"Date_Write.txt"];
    NSFileManager *fileManager = [NSFileManager defaultManager];
    
    BOOL success = [fileManager createFileAtPath:writePaht contents:nil attributes:nil];
    if (success) {
        NSLog(@"create %@ success",writePaht);
    }
    
    NSFileHandle *inFile = [NSFileHandle fileHandleForReadingAtPath:strPath];
    NSFileHandle *outFile = [NSFileHandle fileHandleForWritingAtPath:writePaht];

    NSDictionary *fileAtttri = [fileManager attributesOfItemAtPath:strPath error:nil];
    NSLog(@"file attributes %@",fileAtttri);
    
    NSNumber *filseSizeNum = [fileAtttri objectForKey:NSFileSize];
    
    BOOL isEnd = YES;
    NSInteger readSize = 0;
    NSInteger filseSize = [filseSizeNum longValue];//fuck the *
    
    NSAutoreleasePool *pool = nil;
    int n = 0;
    
    while (isEnd) {
        
        if (n % 10 ==0) {
            [pool release];
            NSLog(@"pool release: %@",pool);
            pool = [[NSAutoreleasePool alloc] init];
        }
        
        
        NSData *data = nil;
   
        NSInteger subLength = filseSize-readSize;
        if (subLength < 10) {
            isEnd = NO;
           data =  [inFile readDataToEndOfFile];
        }else
        {
            data = [inFile readDataOfLength:500];
            readSize += 10;
            [inFile seekToFileOffset:readSize];
        }
        [outFile writeData:data];
        n++;
    }
}

@end
