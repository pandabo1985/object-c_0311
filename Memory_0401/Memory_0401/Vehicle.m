//
//  Vehicle.m
//  Memory_0401
//
//  Created by pan dabo on 14-4-1.
//  Copyright (c) 2014年 pan dabo. All rights reserved.
//

#import "Vehicle.h"

@implementation Vehicle

-(id)initWithName:(NSString *)name{
    self = [super init];
    if (self) {
        _name = [name copy];
    }
    
    return self;
}


-(void)dealloc
{
    NSLog(@"dealloc === Vehicle");
    [_name release];
    [super dealloc];
    
}

@end
