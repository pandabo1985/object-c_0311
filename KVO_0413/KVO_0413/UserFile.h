//
//  UserFile.h
//  KVO_0413
//
//  Created by pan dabo on 14-4-14.
//  Copyright (c) 2014年 pan dabo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FileHandle.h"

@interface UserFile : NSObject
{
    @private
    FileHandle *fileHandle;
}

-(void)doCopy;

@end
