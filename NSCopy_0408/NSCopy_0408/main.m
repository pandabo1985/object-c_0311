//
//  main.m
//  NSCopy_0408
//
//  Created by pan dabo on 14-4-8.
//  Copyright (c) 2014年 pan dabo. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Person.h"
#import "Car.h"
#import "Engine.h"

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        NSMutableArray *array1 = [[NSMutableArray alloc] initWithObjects:@"one",@"two",@"three",@"foure", nil];
        NSMutableArray *array2 =[array1 retain];
        [array2 removeLastObject];
        NSLog(@"array1 = %@",array1);
        NSMutableArray *array3 =[array1 mutableCopy];
        [array3 removeLastObject];
        NSLog(@"array1 = %@",array1);
        NSLog(@"array3 = %@",array3);
        
        NSArray *array4 = @[@"one",@"two",@"three"];
        NSArray *array5 =[array4 copy];
        NSMutableArray *array6 =[array4 mutableCopy];
        [array6 addObject:@"fuck"];
        NSLog(@"array6 = %@",array6);
        NSLog(@"array5 = %@",array5);
        
        NSMutableArray *muArray = [NSMutableArray array];
        for (int i = 0; i < 3; i++) {
            NSObject *object = [[NSObject alloc] init];
            [muArray addObject:object];
            [object release];
        }
        
        for (NSObject *obj in muArray) {
            NSLog(@"point %p, reatinCount = %ld",obj,[obj retainCount]);
        }
        NSLog(@"****************************");
        NSArray *copyArray = [muArray copy];
        for (NSObject *obj in copyArray) {
            NSLog(@"point %p, reatinCount = %ld",obj,[obj retainCount]);
            
            
        }
        
        NSLog(@"--------------深浅拷贝----------------");
        Person *person = [[Person alloc] init];
        person.name = @"panda";
        person.age = @20;
        Person *personCopy = [person copy];
        
        NSLog(@"person = %p,personCopy = %p",person,personCopy);
        NSLog(@"person.age = %p,personCopy.age = %p",person.age,personCopy.age);
        NSLog(@"person.name = %p,personCopy.name = %p",person.name,personCopy.name);
        
        NSLog(@"-----------Car---------------");
        Car *car = [[Car alloc] init];
        Engine *engine = [[Engine alloc] init];
        car.engine = engine;
        [engine release];
        car.weight = @100;
        car.name = @"fuckYou";
        
        Car *car2 = [car copy];
        NSLog(@"car = %p, car2 = %p",car,car2);
        NSLog(@"car.engine = %p, car2.engine = %p",car.engine,car2.engine);
        NSLog(@"car.name = %p, car2.name = %p",car.name,car2.name);
        [car release];
        [car2 release];
        
    }
    return 0;
}

