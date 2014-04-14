//
//  Father.m
//  NSPredicateAndNotification_0414
//
//  Created by pan dabo on 14-4-14.
//  Copyright (c) 2014年 pan dabo. All rights reserved.
//

#import "Father.h"

#import "Child.h"

@implementation Father

- (id)init
{
    self = [super init];
    if (self!=nil) {
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(weekNotification:) name:CHILD_NOTIFATION object:nil];
    }
    return self;
}

-(void)weekNotification:(NSNotification *)notification{
    NSNumber *num = notification.object;
    NSDictionary *dic = notification.userInfo;
    NSLog(@"num = %@",num);
    NSLog(@"dic = %@",dic);
    NSLog(@"小孩醒来了。。。");
}

@end
