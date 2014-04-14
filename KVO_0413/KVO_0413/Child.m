//
//  Child.m
//  KVO_0413
//
//  Created by pan dabo on 14-4-13.
//  Copyright (c) 2014年 pan dabo. All rights reserved.
//

#import "Child.h"

@implementation Child

-(id)init
{
    self =[super init];
    if (self != nil) {
        self.happyVal = 100;
        [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(timerAction:) userInfo:nil repeats:YES];
    }
    return self;
}
-(void)timerAction:(NSTimer *)timer{
    self.happyVal--;//触发KVO
//    [self setValue:[NSNumber numberWithFloat:_happyVal] forKey:@"happyVal"];//触发KVO保证监听的key是一致的。
//    _happyVal--;//不触发KVO
}

@end
