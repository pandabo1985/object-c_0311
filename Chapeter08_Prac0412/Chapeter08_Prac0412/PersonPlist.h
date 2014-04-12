//
//  PersonPlist.h
//  Chapeter08_Prac0412
//
//  Created by pan dabo on 14-4-12.
//  Copyright (c) 2014年 pan dabo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PersonPlist : NSObject<NSCoding>

@property(nonatomic,copy)NSString *name;
@property(nonatomic,retain)NSNumber *age;
@property(nonatomic,retain)NSDate *birthDay;

@end
