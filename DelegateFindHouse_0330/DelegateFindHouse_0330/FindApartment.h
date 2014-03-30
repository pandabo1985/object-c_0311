//
//  FindApartment.h
//  DelegateFindHouse_0330
//
//  Created by pan dabo on 14-3-30.
//  Copyright (c) 2014年 pan dabo. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Person;

typedef enum {
    kHighRent = 0,
    kMiddleRent = 1,
    kLowRent =2
} HouseRent;

@protocol FindApartment <NSObject>

-(HouseRent) FindApartment:(Person *)person;

@end
