//
//  UserContext.h
//  SigtonDemo_0412
//
//  Created by pan dabo on 14-4-12.
//  Copyright (c) 2014年 pan dabo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UserContext : NSObject<NSCopying>

@property(nonatomic ,copy)NSString *userName;
@property(nonatomic, copy)NSString *email;

+(id)shareUserContext;


@end
