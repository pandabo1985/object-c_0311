//
//  Child.m
//  NSPredicateAndNotification_0414
//
//  Created by pan dabo on 14-4-14.
//  Copyright (c) 2014年 pan dabo. All rights reserved.
//

#import "Child.h"

@implementation Child

- (id)init
{
    self = [super init];
    if (self != nil) {
        _sleep = 100;
        
        [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(timeAction:) userInfo:nil repeats:YES];
    }
    return self;
}

-(void)timeAction:(NSTimer *)timer{
    _sleep -=2;
    if (_sleep < 90) {
        
        NSNumber *sleepNum = [NSNumber numberWithInteger:_sleep];
        NSDictionary *dic = @{@"sleep": sleepNum};
        
        [[NSNotificationCenter defaultCenter] postNotificationName:CHILD_NOTIFATION object:[NSNumber numberWithInteger:_sleep] userInfo:dic];
        [timer invalidate];
    }
}
@end
