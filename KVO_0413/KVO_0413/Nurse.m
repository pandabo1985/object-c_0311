//
//  Nurse.m
//  KVO_0413
//
//  Created by pan dabo on 14-4-13.
//  Copyright (c) 2014年 pan dabo. All rights reserved.
//

#import "Nurse.h"

@implementation Nurse

-(id)initWithChild:(Child *)child
{
    self =  [super init];
    if (self != nil) {
        self.child = child;
        [self.child addObserver:self forKeyPath:@"happyVal" options:NSKeyValueObservingOptionNew|NSKeyValueObservingOptionOld context:nil];
    }
    return self;
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
    NSLog(@"keyPath = %@",keyPath);
    NSLog(@"object is %@",[object class] );
    NSLog(@"chage = %@",change);
    
}

- (void)dealloc
{
    NSLog(@"child == dealloc");
    [_child removeObserver:self forKeyPath:@"happyVal"];
    [_child release];
    [super dealloc];
}

@end
