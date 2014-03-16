//
//  Person.m
//  ClassAndObject_0316
//
//  Created by pan dabo on 14-3-16.
//  Copyright (c) 2014年 pan dabo. All rights reserved.
//

#import "Person.h"

@implementation Person


//方法声明
-(id)initWithAge:(int) _age identify:(int) _identify
{
    if (self == [super init]) {
        age = _age;
        identify = _identify;
    }
    return self;
}

-(int)age
{
    return age;
}
-(int)identify
{
    return identify;
}

-(void)setAge:(int) _age
{
    age = _age;
}

@end
