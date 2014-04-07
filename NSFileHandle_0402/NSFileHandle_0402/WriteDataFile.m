//
//  WriteDataFile.m
//  NSFileHandle_0402
//
//  Created by pan dabo on 14-4-5.
//  Copyright (c) 2014年 pan dabo. All rights reserved.
//

#import "WriteDataFile.h"

@implementation WriteDataFile

-(void)runWrite{
    

    NSFileManager *fileManager = [NSFileManager defaultManager];
    NSString *path = NSHomeDirectory();
    NSString *filpath = [path stringByAppendingPathComponent:@"Date.txt"];
    BOOL suceess = [fileManager createFileAtPath:filpath contents:nil attributes:nil];
    if (suceess) {
        NSLog(@"create success");
    }
    
    NSFileHandle *fileHandle = [NSFileHandle fileHandleForWritingAtPath:filpath];
    [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(timerAction:) userInfo:fileHandle repeats:YES];

}

-(void)timerAction:(NSTimer *)timer
{
    
    NSLog(@"******timerAction****");
    static int n = 0;
    
    NSFileHandle *fileHandle  = timer.userInfo;
    [fileHandle seekToEndOfFile];
    NSDate *nowDate = [NSDate date];
    NSDateFormatter *dateformate = [[NSDateFormatter alloc] init];
    [dateformate setDateFormat:@"yyyy/MM/dd HH:mm:ss"];
    NSString *dateStr = [dateformate stringFromDate:nowDate];
  
    [dateformate release];
    
    dateStr = [dateStr stringByAppendingString:@"\n"];


    
    NSData *data = [dateStr dataUsingEncoding:NSUTF8StringEncoding];
    [fileHandle writeData:data];
    
    if (n == 10) {
        [timer invalidate];
        [fileHandle closeFile];
    }
    n++;
}
@end
