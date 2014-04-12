//
//  Adrress.h
//  Chapeter08_Prac0412
//
//  Created by pan dabo on 14-4-12.
//  Copyright (c) 2014年 pan dabo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Adrress : NSObject<NSCoding>

@property(nonatomic,copy)NSString *name;
@property(nonatomic,retain)NSNumber *age;
@property(nonatomic,copy)NSString *sex;
@property(nonatomic,copy)NSString *adrr;

@end
