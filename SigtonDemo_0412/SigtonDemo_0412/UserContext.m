//
//  UserContext.m
//  SigtonDemo_0412
//
//  Created by pan dabo on 14-4-12.
//  Copyright (c) 2014年 pan dabo. All rights reserved.
//

#import "UserContext.h"

static UserContext *sigtonInstance = nil;

@implementation UserContext

+(id)shareUserContext
{
    @synchronized(self){
        if (sigtonInstance == nil) {
            NSLog(@"*****shareUserContext***sigtonInstance == nil****");
            sigtonInstance = [[[self class] alloc] init];
        }
    }
    NSLog(@"****shareUserContext****sigtonInstance != nil****");
    return self;
}

+ (id)allocWithZone:(struct _NSZone *)zone
{
    if (sigtonInstance == nil) {
        NSLog(@"*****allocWithZone***sigtonInstance == nil");
        sigtonInstance = [super allocWithZone:zone];
    }
    NSLog(@"*****allocWithZone*****sigtonInstance != nil");
    return sigtonInstance;
}

- (id)copyWithZone:(NSZone *)zone
{
    NSLog(@"******copyWithZone****copyWithZone*********");
    return sigtonInstance;
}

-(id)retain
{
    NSLog(@"*****retain*****retain*********");
    return sigtonInstance;
}

-(oneway void)release
{
    NSLog(@"*****release*****release*********");
}

-(id)autorelease{
    NSLog(@"*******autorelease***autorelease*********");
    return sigtonInstance;
}

- (NSUInteger)retainCount{
     NSLog(@"*******retainCount***retainCount*********");
    return UINT_MAX;
}
@end
