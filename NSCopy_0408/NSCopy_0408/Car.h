//
//  Car.h
//  NSCopy_0408
//
//  Created by pan dabo on 14-4-9.
//  Copyright (c) 2014年 pan dabo. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Engine;

@interface Car : NSObject<NSCopying>

//@property(nonatomic,retain)Engine *engine;
@property(nonatomic,copy)Engine *engine;
@property(nonatomic,retain) NSNumber *weight;
@property(nonatomic,copy)NSString *name;

@end
