//
//  Agent.m
//  DelegateFindHouse_0330
//
//  Created by pan dabo on 14-3-30.
//  Copyright (c) 2014年 pan dabo. All rights reserved.
//

#import "Agent.h"
#import "Person.h"
@implementation Agent
static int count = 1;

-(HouseRent)FindApartment:(Person *)person
{
    NSLog(@"agent find aparment!");
    HouseRent rent;
    if (count == 1) {
        NSLog(@"agetn tell to %@  hightRent",person.name);
        rent = kHighRent;
      
    }else if (count == 2){
        rent = kMiddleRent;
         NSLog(@"agetn tell to %@  middleRent",person.name);
     
    }else{
        rent = kLowRent;
         NSLog(@"agetn tell to %@  lowRent",person.name);
     
    }
    count++;
       return rent;
   
}

@end
