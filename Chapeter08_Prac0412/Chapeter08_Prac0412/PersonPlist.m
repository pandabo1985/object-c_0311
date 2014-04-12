//
//  PersonPlist.m
//  Chapeter08_Prac0412
//
//  Created by pan dabo on 14-4-12.
//  Copyright (c) 2014年 pan dabo. All rights reserved.
//

#import "PersonPlist.h"

#define NAME @"name"
#define AGE @"age"
#define BIRTHDAY @"birthDay"

@implementation PersonPlist

- (void)encodeWithCoder:(NSCoder *)aCoder
{
    [aCoder encodeObject:_name forKey:NAME];
    [aCoder encodeObject:_age forKey:AGE];
    [aCoder encodeObject:_birthDay forKey:BIRTHDAY];
}
- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super init];
    if (self != nil) {
        self.name = [aDecoder decodeObjectForKey:NAME];
        self.age = [aDecoder decodeObjectForKey:AGE];
        self.birthDay = [aDecoder decodeObjectForKey:BIRTHDAY];
    }
    return self;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"name = %@,age = %@,birthDay = %@", self.name,_age,_birthDay];
}

- (void)dealloc
{   [_name release];
    [_age release];
    [_birthDay release];
    [super dealloc];
}

@end
