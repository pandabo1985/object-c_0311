//
//  Cpu.h
//  MemoryDeom_0330
//
//  Created by pan dabo on 14-3-31.
//  Copyright (c) 2014年 pan dabo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Cpu : NSObject
{
    @private
    int _cID;
}

-(void)setCID:(int)cID;
-(int)cID;

@end
