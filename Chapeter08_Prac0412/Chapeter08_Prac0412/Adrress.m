//
//  Adrress.m
//  Chapeter08_Prac0412
//
//  Created by pan dabo on 14-4-12.
//  Copyright (c) 2014年 pan dabo. All rights reserved.
//

#import "Adrress.h"

#define NAME @"name"
#define AGE @"age"
#define SEX @"sex"
#define ADRR @"adrr"



@implementation Adrress


- (void)encodeWithCoder:(NSCoder *)aCoder
{
    [aCoder encodeObject:_name forKey:NAME];
    [aCoder encodeObject:_age forKey:AGE];
    [aCoder encodeObject:_sex forKey:SEX];
    [aCoder encodeObject:_adrr forKey:ADRR];
}
- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super init];
    if (self !=nil) {
        self.name = [aDecoder decodeObjectForKey:NAME];
        self.sex = [aDecoder decodeObjectForKey:SEX];
        self.age = [aDecoder decodeObjectForKey:AGE];
        self.adrr = [aDecoder decodeObjectForKey:ADRR];
    }
    return self;
}

-(void)dealloc
{
    [_name release];
    [_sex release];
    [_age release];
    [_adrr release];
    [super dealloc];
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"name = %@,sex = %@,age = %@,adrr = %@", self.name,self.sex,self.age,self.adrr];
}
@end
