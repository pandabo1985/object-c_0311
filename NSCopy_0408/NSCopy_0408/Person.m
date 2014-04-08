//
//  Peson.m
//  NSCopy_0408
//
//  Created by pan dabo on 14-4-8.
//  Copyright (c) 2014年 pan dabo. All rights reserved.
//

#import "Person.h"

@implementation Person

- (id)copyWithZone:(NSZone *)zone
{
    
    //Foundation 的不可变对象的copy相当于retain.
    /****浅拷贝****/
//    Person *person = [[[self class] allocWithZone:zone] init];
//    
//    person.name = _name;
//    person.age = _age;
//    return [person autorelease];
    
    /*******深拷贝*****/
    
    Person *person = [[[self class] allocWithZone:zone] init];
    
//    person.name = [_name copy];
    person.name =[_name mutableCopy];
    person.age = [_age copy];
    return [person autorelease];
}

@end
