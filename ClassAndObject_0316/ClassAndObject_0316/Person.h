//
//  Person.h
//  ClassAndObject_0316
//
//  Created by pan dabo on 14-3-16.
//  Copyright (c) 2014年 pan dabo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    //实例变量声明
    int identify;
    int age;
}

//方法声明
-(id)initWithAge:(int) _age identify:(int) _identify;

-(int)age;
-(int)identify;
-(void)setAge:(int) _age;
@end
