//
//  Vehicle.h
//  Memory_0401
//
//  Created by pan dabo on 14-4-1.
//  Copyright (c) 2014年 pan dabo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Vehicle : NSObject
{
@private
    NSString *_name;
}

-(id)initWithName:(NSString *)name;

@end
