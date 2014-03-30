//
//  main.m
//  CarDemo_0326
//
//  Created by pan dabo on 14-3-26.
//  Copyright (c) 2014年 pan dabo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Car.h"
#import "Bmw.h"
#import "Person.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Car *car = [[Car alloc] init];
        [car run];
        
        car ->name = @"panda";
        
        [car run];
       
        Bmw *bmw = [[Bmw alloc] init];
        [bmw run];
        
        NSLog(@"====car=====");
        Person *person = [[Person alloc] init];
        
        id car2;
        car2 = car;
        if ([car2 isKindOfClass:[Car class]]) {
           NSLog(@"car2 is kind of car is true");
        }
        if ([car2 isMemberOfClass:[Car class]]) {
            NSLog(@"car2 is member of car is true");
        }
        
        [car2 run];
        
        [person driver:car2];
        NSLog(@"=====bmw====");
        car2 = bmw;
        if ([car2 isKindOfClass:[Car class]]) {
            NSLog(@"car2 is kind of car is true");
        }
        if ([car2 isMemberOfClass:[Car class]]) {
            NSLog(@"car2 is member of car is true");
        }
        [car2 run];
        SEL action;
        action = @selector(run);
        if ([person respondsToSelector:action]) {
                 NSLog(@"=====respondsToSelector====");
           [ person driver:car2];
        }
        
        if ([person respondsToSelector:@selector(driver:)]) {
               NSLog(@"=====11111====");
            [ person driver:car2];
        }
        NSLog(@"=====22222222====");
        if (![person performSelector:@selector(driver:) withObject:car2]) {
            NSLog(@"33333333");
        }
        
//        [car2 fuck];
        
        @try {
//            [car2 fuck];
        }
        @catch (NSException *exception) {
            NSLog(@"catch exception %@ %@",[exception name],[exception reason]);
        }
        @finally {
            NSLog(@"finally");
        }
        
    }
    return 0;
}

