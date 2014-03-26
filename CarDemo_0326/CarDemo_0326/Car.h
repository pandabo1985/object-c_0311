//
//  Car.h
//  CarDemo_0326
//
//  Created by pan dabo on 14-3-26.
//  Copyright (c) 2014年 pan dabo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Car : NSObject
{
    @protected
    int carID;
    float speed;
    @public
    NSString *name;
}
-(void)run;

@end
