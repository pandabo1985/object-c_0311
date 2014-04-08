//
//  Peson.h
//  NSCopy_0408
//
//  Created by pan dabo on 14-4-8.
//  Copyright (c) 2014年 pan dabo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject<NSCopying>

@property(nonatomic,copy) NSString *name;
@property(nonatomic,retain)NSNumber *age;

@end
