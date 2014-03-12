//
//  Person.h
//  Hello_0312
//
//  Created by pan dabo on 14-3-12.
//  Copyright (c) 2014年 pan dabo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    //实例变量
    int age;
    int sex;
}

-(int)getAge;
-(void)setAge:(int)mage;

@end
