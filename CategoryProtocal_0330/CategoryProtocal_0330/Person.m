//
//  Person.m
//  CategoryProtocal_0330
//
//  Created by pan dabo on 14-3-30.
//  Copyright (c) 2014年 pan dabo. All rights reserved.
//

#import "Person.h"

//extension 延展都是在 .m文件中实现。
@interface Person ()
-(void)privateMethod;
@end


@implementation Person
@synthesize name = _name;
@synthesize age = _age;

-(void)test
{
    NSLog(@"current class method! test");
    [self privateMethod];
}
-(void)eate
{
       NSLog(@"current class method! eate");
}

-(void)privateMethod
{
    NSLog(@"extension privateMethod");
}

-(void)defaultRequiredMethod1
{
    NSLog(@"helloprotocol defaultRequiredMethod1");
}

-(void)requiredMethod2
{
     NSLog(@"helloprotocol requiredMethod2");
}

@end


@implementation Person (Creation)

+(id)PersonWithName:(NSString *)aName;
{
    Person *person = [[Person alloc] init];
    person.name = aName;
    return person;
}
+(id)PersonWithName:(NSString *)aName andAge:(int)age
{
    Person *person = [[Person alloc] init];
    person.name = aName;
    person.age = age;
    return person;
}

-(id)initWithName:(NSString *) aName
{
    self = [super init];
    if (self) {
        self.name = aName;
    }
    return self;
}
-(id)initWithName:(NSString *) aName andAge:(int) aAge
{
    self = [super init];
    if (self) {
        self.name = aName;
        self.age = aAge;
    }
    return self;
}

@end

@implementation Person (Life)

//-(void)eat
//{
//    NSLog(@"catagory Life eate");
//}
-(void)sleep
{
    NSLog(@"catagory Life sleep");
}
-(void)paly
{
    NSLog(@"catagory Life paly");
}

@end