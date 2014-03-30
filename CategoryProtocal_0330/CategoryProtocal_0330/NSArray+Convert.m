//
//  NSArray+Convert.m
//  CategoryProtocal_0330
//
//  Created by pan dabo on 14-3-30.
//  Copyright (c) 2014年 pan dabo. All rights reserved.
//

#import "NSArray+Convert.h"

@implementation NSArray (Convert)

+(NSMutableArray *)arrayFromNumber:(int)number
{
    NSMutableArray *mutableArr = [[NSMutableArray alloc] init];
    while (number) {
        int last = number % 10;
        number /= 10;
        [mutableArr addObject:[NSNumber numberWithInt:last]];
    }
    return mutableArr;
}

@end
