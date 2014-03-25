//
//  Rectangle.h
//  InheritanceAndOverload_0325
//
//  Created by pan dabo on 14-3-25.
//  Copyright (c) 2014年 pan dabo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Rectangle : NSObject
{
    int width;
    int heigth;
}

@property(nonatomic) int width,heigth;
-(int)area;
-(int)perimter;
-(void)setWidth:(int) _W andHeight:(int) _h;
@end
