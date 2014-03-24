//
//  Person.h
//  PersonGet_0324
//
//  Created by pan dabo on 14-3-24.
//  Copyright (c) 2014年 pan dabo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    int myNumber;
    int age;
}

@property(nonatomic) int age;

-(int)myNumber;
-(void)setMyNuber:(int)_number;
-(void)printInfo;
@end
