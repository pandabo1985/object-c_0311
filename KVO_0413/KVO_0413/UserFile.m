//
//  UserFile.m
//  KVO_0413
//
//  Created by pan dabo on 14-4-14.
//  Copyright (c) 2014年 pan dabo. All rights reserved.
//

#import "UserFile.h"

@implementation UserFile

- (id)init
{
    self = [super init];
    if (self!=nil) {
        NSString *homePath = NSHomeDirectory();
        NSString *srcPath = [homePath stringByAppendingPathComponent:@"Photoshop_CS6_For_Mac_苹果会.dmg"];
        NSString *targetPath = [homePath stringByAppendingPathComponent:@"Photoshop_CS6_For_Mac_copy.dmg"];
        fileHandle  = [[FileHandle alloc] initPath:srcPath targetPaht:targetPath];
        [fileHandle addObserver:self forKeyPath:@"readeSize" options:NSKeyValueObservingOptionNew context:nil];
    }
    return self;
}
-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
    if ([keyPath isEqualToString:@"readeSize"]) {
        NSNumber * readSizeNum = [change objectForKey:@"new"];
        float readSize = [readSizeNum floatValue];
        if ([object isKindOfClass:[FileHandle class]]) {
            FileHandle *handle = (FileHandle *)object;
              float fileSize = fileHandle.fileSize;
            float result = readSize /fileSize *100;
            NSLog(@"%0.1f",result);
        }
      
    }
}
-(void)doCopy
{
    [fileHandle startCopy];
}

-(void)dealloc{
    
    [super dealloc];
}

@end
