//
//  main.m
//  Foundation_0327
//
//  Created by pan dabo on 14-3-27.
//  Copyright (c) 2014年 pan dabo. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        NSLog(@"=======*******=========");
        NSNumber *monthNumber = [NSNumber numberWithInt:10];
        //        NSLog(@"monthNumber = %d",monthNumber);
        NSLog(@"monthNumber = %@",monthNumber);
        int month = [monthNumber intValue];
        NSLog(@"monthNumber = %d",month);
        NSLog(@"=======/////////////=========");
        
        NSString *string1 =@"这是一个字符串常量。";
        NSString *string2 = [[NSString alloc] init];
        NSString *string3 = [NSString string];
        NSString *string4 = [[NSString alloc] initWithString:@"abc"];
        NSString *string5 = [NSString stringWithString:@"xyz"];
        NSLog(@" string3 = %@",string3);
        NSLog(@" string4 = %@",string4);
        NSLog(@" string5 = %@",string5);
        NSString *string6 = [[NSString alloc] initWithFormat:@"%d",10];
        NSLog(@"string6 = %@",string6);
        NSString *string7 = [[NSString alloc] initWithFormat:@"%d",10];
        if ([string6 isEqualToString:string7]) {
            NSLog(@"string6 is equal to string7");
        }
        //常量区
        NSString *string8 = [NSString stringWithString:@"1234"];
        NSString *string9 = [NSString stringWithString:@"1234"];
        
        if ([string8 isEqualToString:string9]) {
            NSLog(@"string 8 is equal to string 9");
        }
        
        if (string8 == string9) {
            NSLog(@"string8 == string9");
        }
        
        NSString *string12 = @"hello string";
        NSLog(@"upper : %@",[string12 uppercaseString]);
        NSLog(@"lower : %@",[string12 lowercaseString]);
        NSLog(@"capital : %@",[string12 capitalizedString]);
        
        NSString *string13 = @"3.14";
        float pi = [string13 floatValue];
        NSLog(@"pi = %.2f",pi);
        NSString *string14 = @"a b c d";
        NSArray *array = [string14 componentsSeparatedByString:@" "];
        NSLog(@"array =  %@",array);
        
        NSString *string15 = @"abcd";
        NSString * string16 = [string15 substringFromIndex:2];
        NSLog(@"%@",string16);
        NSRange rang;
        rang.location =1;
        rang.length = 2;
        NSString *str =  [string15 substringWithRange:rang];
        NSLog(@"str = %@",str);
        NSString *string17 = @"abc";
        NSString *string18 = @"ddd";
        NSString *string19 = [string17 stringByAppendingString:string18];
        NSLog(@"string19 = %@",string19);
        
        //查询
        NSString *link = @"abdd_fuck_yo_k";
        NSRange ran = [link rangeOfString:@"fuck_y"];
        if (ran.location != NSNotFound) {
            NSLog(@"%@",NSStringFromRange(ran));
        }
        
        NSMutableString *mutableStr = [[NSMutableString alloc] initWithFormat:@"abc"];
        [mutableStr insertString:@"ddd" atIndex:3];
        NSLog(@"mutableStr = %@",mutableStr);
        [mutableStr deleteCharactersInRange:NSMakeRange(1, 2)];
        NSLog(@"mutableStr = %@",mutableStr);
        
        //nsarray
        NSArray *array1 = [NSArray arrayWithObject:@"One"];
        NSArray *array2 = [NSArray arrayWithObjects:@"One",@"Two", nil];
        NSArray *array3 = [NSArray arrayWithArray:array2];
        NSLog(@"array1 = %@",array1);
        NSLog(@"array2 = %@",array2);
        NSLog(@"array3 = %@",array3);
        NSArray *array4 = [[NSArray alloc] initWithArray:array1];
        NSLog(@"array4 = %@",array4);
        long index = [array2 indexOfObject:@"One"];
        NSLog(@"One is index of %lu",index);
        NSMutableArray *mutableArr = [NSMutableArray arrayWithObjects:@"One",@"Two",nil];
        NSLog(@"mutalbeArr = %@",mutableArr);
        [mutableArr addObject:@"Three"];
        NSLog(@"mutalbeArr = %@",mutableArr);
        [mutableArr insertObject:@"fff" atIndex:2];
        NSLog(@"mutalbeArr = %@",mutableArr);
        [mutableArr removeLastObject];
        NSLog(@"mutalbeArr = %@",mutableArr);
        for (int i = 0; i < [mutableArr count]; i++) {
            NSString *element = [mutableArr objectAtIndex:i];
            NSLog(@"element i = %@",element);
        }
        for (NSString *element in mutableArr) {
            NSLog(@"elemnt %lu = %@",[mutableArr indexOfObject:element],element);
        }
        
        NSLog(@"******NSDictionary*******");
        NSDictionary *dic1= [NSDictionary dictionaryWithObjectsAndKeys:@"value1",@"k1",@"value2",@"k2", nil];
        NSLog(@"dic1 = %@",dic1);
        NSMutableDictionary *mutableDic2 =[NSMutableDictionary dictionary];
        [mutableDic2 setDictionary:dic1];
        NSLog(@"mutableDic2 = %@",mutableDic2);
        for (int i = 0; i<[[dic1 allKeys] count]; i++) {
            NSString *element = [dic1 objectForKey:[[dic1 allKeys] objectAtIndex:i]];
            NSLog(@" element %d = %@",i,element);
        }
        
        for (id key in dic1) {
            NSString *object = [dic1 objectForKey:key];
            NSLog(@" object = %@",object);
        }
        
        NSEnumerator *enumerator = [dic1 keyEnumerator];
        id key = [enumerator nextObject];
        while (key) {
            NSLog(@"key = %@",key);
            id object = [dic1 objectForKey:key];
            NSLog(@"object = %@",object);
            key = [enumerator nextObject];
        }
        
        NSSet *set1 = [NSSet setWithObjects:@"set1",@"set2", nil];
        NSSet *set2 = [[NSSet alloc] initWithObjects:@"one",@"two",@"three", nil];
        NSLog(@"set1 = %@",set1);
        NSLog(@"set2 = %@",set2);
        NSMutableSet *mutableSet = [[NSMutableSet alloc] init];
        [mutableSet addObject:@"muset2"];
        [mutableSet addObject:@"muset1"];
        [mutableSet addObject:@"muset2"];
        NSLog(@"mutableSet = %@",mutableSet);
        NSLog(@"isSub %d",[set1 isSubsetOfSet:set2]);
    }
    return 0;
}

