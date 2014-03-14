//
//  main.m
//  Operator_0315
//
//  Created by pan dabo on 14-3-15.
//  Copyright (c) 2014年 pan dabo. All rights reserved.
//

#import <Foundation/Foundation.h>



int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        // insert code here...
        NSLog(@"Hello, World!");
        
        int i = 8;
        NSLog(@"i++ = %d",i++);
        NSLog(@"i = %d",i);
        NSLog(@"++i = %d",++i);
        int a = 3,b = 4;
        NSLog(@"(a>b)? a:b, max is %d",(a>b)?a:b);
        int year;
//        scanf("%d",&year);
        year = 300;
        if ((year % 4 == 0 && year % 100 != 0 )|| (year % 400 ==0)) {
            NSLog(@"%d 是闰年！",year);
        }else{
            NSLog(@"%d 不是闰年！",year);
        }
        
        int flag = 3;
        NSLog(@"====break= i = 3 ===");
        for (int i = 1; i < 5; i++) {
            if (i == flag) {
                break;
            }
            NSLog(@"i = %d",i);
        }
        NSLog(@"====continue== i = 3 ==");
        for (int i = 1; i < 5; i++) {
            if (i == flag) {
                continue;
            }
            NSLog(@"i = %d",i);
        }
        
        int sw = 5;
        switch (sw) {
            case  5:
                NSLog(@"sw = %d",++sw);
                break;
            case  6:
                NSLog(@"sw = %d",sw++);
                break;
            case  7:
                NSLog(@"sw = %d",sw);
                break;

            default:
                break;
        }
    }
    return 0;
    
   

}

