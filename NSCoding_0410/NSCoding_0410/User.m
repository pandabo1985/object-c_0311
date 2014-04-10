//
//  User.m
//  NSCoding_0410
//
//  Created by pan dabo on 14-4-10.
//  Copyright (c) 2014年 pan dabo. All rights reserved.
//

#import "User.h"

#define NAME @"name"
#define EMAIL @"email"
#define PASSWORLD @"passworld"

@implementation User


- (void)encodeWithCoder:(NSCoder *)aCoder
{
    [aCoder encodeObject:_name forKey:NAME];
    [aCoder encodeObject:_email forKey:EMAIL];
    [aCoder encodeObject:_passworld forKey:PASSWORLD];
    NSLog(@"encode");
}
- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super init];
    if (self !=nil) {
        _name = [[aDecoder decodeObjectForKey:NAME] copy];
        self.email =   [aDecoder decodeObjectForKey:EMAIL];
        _passworld =  [[aDecoder decodeObjectForKey:PASSWORLD] copy];
    }
    NSLog(@"decode");
    return self;
}

-(NSString *)description{
    NSString *des = [NSString stringWithFormat:@"name = %@, email = %@,passworld = %@",_name,_email,_passworld];
    return des;
}

-(void)dealloc
{
    [_name release];
    [_email release];
    [_passworld release];
    NSLog(@"User == dealloc");
    [super dealloc];
}

@end
