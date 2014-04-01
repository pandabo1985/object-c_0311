//
//  main.m
//  Memory_0401
//
//  Created by pan dabo on 14-4-1.
//  Copyright (c) 2014年 pan dabo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Vehicle.h"
#import "Car.h"
#import "Engine.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSString *name = [[NSString alloc] initWithFormat:@"audi"];
        Car *car = [[Car alloc] initWithName:name];
        [name release];
        Engine *v6 = [[Engine alloc] init];
        [car setEngin:v6];
        [v6 release];
        
        [car release];
        
    }
    return 0;
}

