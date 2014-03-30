//
//  Person.h
//  CategoryProtocal_0330
//
//  Created by pan dabo on 14-3-30.
//  Copyright (c) 2014年 pan dabo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HelloProtocol.h"

@interface Person : NSObject <HelloProtocol>
{
    @private
    NSString *_name;
    int _age;
}

@property(nonatomic,copy) NSString *name;
@property(nonatomic) int age;

-(void)test;
-(void)eate;

@end


@interface Person (Creation)

+(id)PersonWithName:(NSString *)aName;
+(id)PersonWithName:(NSString *)aName andAge:(int)age;

-(id)initWithName:(NSString *) aName;
-(id)initWithName:(NSString *) aName andAge:(int) aAge;

@end

@interface Person (Life)

//-(void)eat;
-(void)sleep;
-(void)paly;

@end