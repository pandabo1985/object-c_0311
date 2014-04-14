//
//  main.m
//  NSPredicateAndNotification_0414
//
//  Created by pan dabo on 14-4-14.
//  Copyright (c) 2014年 pan dabo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        NSMutableArray *array = [NSMutableArray array];
        for (int i = 0; i < 10; i++) {
            Person *peron = [[Person alloc] init];
            if (i < 5) {
                peron.name = [NSString stringWithFormat:@"jack_%d",i];
            }else{
                peron.name = [NSString stringWithFormat:@"tom_%d",i];
            }
            peron.age = @(20+i);
            
            [array addObject:peron];
            [peron release];
        }
        //条件满足
        NSPredicate *predicate = [NSPredicate predicateWithFormat:@"name = 'tom_7'||age< 25 and age>%d",22];//格式占位符
        for (Person *p in array) {
            BOOL ret = [predicate evaluateWithObject:p];
            if (ret) {
                NSLog(@"p = %@",p);
            }
        }
        
        //数组过滤
        NSArray *filterArray = [array filteredArrayUsingPredicate:predicate];
        NSLog(@"filterArray = %@",filterArray);
        
        
         NSPredicate *predicate_new = [NSPredicate predicateWithFormat:@"name in{'tom_8','jack_3'}"];//格式占位符
        //数组过滤
        NSArray *filterArray_new = [array filteredArrayUsingPredicate:predicate_new];
        NSLog(@"filterArray = %@",filterArray_new);
        
    }
    return 0;
}

