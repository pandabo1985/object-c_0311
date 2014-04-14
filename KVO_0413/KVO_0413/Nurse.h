//
//  Nurse.h
//  KVO_0413
//
//  Created by pan dabo on 14-4-13.
//  Copyright (c) 2014年 pan dabo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Child.h"

@interface Nurse : NSObject

@property(nonatomic,retain)Child *child;

-(id)initWithChild:(Child *)child;

@end
