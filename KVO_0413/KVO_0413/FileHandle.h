//
//  FileHandle.h
//  KVO_0413
//
//  Created by pan dabo on 14-4-14.
//  Copyright (c) 2014年 pan dabo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FileHandle : NSObject{
    @private
    NSString *_srcPath;
    NSString *_targetPath;
}


@property(nonatomic,assign) float fileSize;
@property(nonatomic,assign)float readeSize;

-(id)initPath:(NSString *)srcPath targetPaht:(NSString *)targetPaht;
-(void)startCopy;

@end
