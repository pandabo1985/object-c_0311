//
//  Person.m
//  DelegateFindHouse_0330
//
//  Created by pan dabo on 14-3-30.
//  Copyright (c) 2014年 pan dabo. All rights reserved.
//

#import "Person.h"

@interface Person ()
-(void)startFindApartment:(NSTimer *)timer;
@end

@implementation Person

@synthesize name = _name;
@synthesize delegate =_delegate;

-(id) initWihtName:(NSString *) name withDelegate:(id<FindApartment>)delegate
{
    self = [super init];
    if (self) {
        self.name = name;
        self.delegate = delegate;
    }
    return self;
}

-(void) wantToFindApartment
{
    [NSTimer scheduledTimerWithTimeInterval:2 target:self selector:@selector(startFindApartment:) userInfo:@"hello find" repeats:YES];
}

-(void)startFindApartment:(NSTimer *)timer
{
    NSString *userInfo = timer.userInfo;
    NSLog(@"userInfo = %@",userInfo);
    if ([self.delegate respondsToSelector:@selector(FindApartment:)]) {
         rent = [self.delegate FindApartment:self];
    }
    if (rent == kLowRent) {
   NSLog(@"is Ok %@",self.name);
        [timer invalidate];
    }else if (rent == kHighRent){
         NSLog(@"too too hight %@",self.name);
    }else{
        NSLog(@"too  hight %@",self.name);
       NSLog(@" kMiddleRent  ");
    }
}
@end
