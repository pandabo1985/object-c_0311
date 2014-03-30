//
//  HelloProtocol.h
//  CategoryProtocal_0330
//
//  Created by pan dabo on 14-3-30.
//  Copyright (c) 2014年 pan dabo. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol HelloProtocol <NSObject>

-(void)defaultRequiredMethod1;

@required
-(void)requiredMethod2;
@optional
-(void)optionalMethod3;

@end
