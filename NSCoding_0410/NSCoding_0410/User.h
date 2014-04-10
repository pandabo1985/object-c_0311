//
//  User.h
//  NSCoding_0410
//
//  Created by pan dabo on 14-4-10.
//  Copyright (c) 2014年 pan dabo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface User : NSObject<NSCoding>

@property(nonatomic,copy)NSString *name;
@property(nonatomic,copy)NSString *email;
@property(nonatomic,copy)NSString *passworld;



@end
