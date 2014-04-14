//
//  FileHandle.m
//  KVO_0413
//
//  Created by pan dabo on 14-4-14.
//  Copyright (c) 2014年 pan dabo. All rights reserved.
//

#import "FileHandle.h"

@implementation FileHandle


-(id)initPath:(NSString *)srcPath targetPaht:(NSString *)targetPaht
{
    self = [super init];
    if (self != nil) {
        _srcPath = [srcPath copy];
        _targetPath = [targetPaht copy];
    }
    return self;
}

-(void)startCopy
{
    NSFileManager *fileManager = [NSFileManager defaultManager];
    BOOL success = [fileManager createFileAtPath:_targetPath contents:nil attributes:nil];
    if (success) {
        NSLog(@"create file success!");
    }
    
    NSFileHandle *inFile = [NSFileHandle fileHandleForReadingAtPath:_srcPath];
    NSFileHandle *outFile = [NSFileHandle fileHandleForWritingAtPath:_targetPath];
    NSDictionary *fileAttri = [fileManager attributesOfItemAtPath:_srcPath error:nil];
    NSNumber *fileSizeNum = [fileAttri objectForKey:NSFileSize];
    
    BOOL isEnd = YES;
    NSInteger readSize = 0;
    self.fileSize  = [fileSizeNum longValue];
    NSAutoreleasePool *pool = nil;
    int n = 0;
    NSLog(@"开始复制。。。。");
    while (isEnd) {
        if (n % 10 == 0) {
            [pool release];
            pool = [[NSAutoreleasePool alloc] init];
        }
        
        NSInteger subLeng = self.fileSize - self.readeSize;
        NSData *data = nil;
        if (subLeng < 5000) {
            isEnd = NO;
            data = [inFile readDataToEndOfFile];
        }else{
            data = [inFile readDataOfLength:5000];
            self.readeSize += 5000;
            [inFile seekToFileOffset:_readeSize];
        }
        [outFile writeData:data];
        n++;
    }
    [outFile closeFile];
    NSLog(@"文件复制成功！");
}

@end
