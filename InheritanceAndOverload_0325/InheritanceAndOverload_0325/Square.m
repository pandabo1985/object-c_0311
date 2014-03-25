//
//  Square.m
//  InheritanceAndOverload_0325
//
//  Created by pan dabo on 14-3-25.
//  Copyright (c) 2014年 pan dabo. All rights reserved.
//

#import "Square.h"

@implementation Square

-(void)setSide:(int) s
{
    [self setWidth:s andHeight:s];
}
-(int)side
{
    return width;
}

@end
