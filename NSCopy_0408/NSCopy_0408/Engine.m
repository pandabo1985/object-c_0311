//
//  Engine.m
//  NSCopy_0408
//
//  Created by pan dabo on 14-4-9.
//  Copyright (c) 2014年 pan dabo. All rights reserved.
//

#import "Engine.h"

@implementation Engine
- (id)copyWithZone:(NSZone *)zone
{
    Engine *engin =[[[self class] allocWithZone:zone] init];
    return engin;
}
@end
