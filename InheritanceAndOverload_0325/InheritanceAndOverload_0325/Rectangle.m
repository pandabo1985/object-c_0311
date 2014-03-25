//
//  Rectangle.m
//  InheritanceAndOverload_0325
//
//  Created by pan dabo on 14-3-25.
//  Copyright (c) 2014年 pan dabo. All rights reserved.
//

#import "Rectangle.h"

@implementation Rectangle
@synthesize width,heigth;

-(int)area
{
    return width * heigth;
}
-(int)perimter
{
    return (width + heigth) * 2;
}
-(void)setWidth:(int) _W andHeight:(int) _h
{
    width = _W;
    heigth = _h;
}

@end
