//
//  main.m
//  KVC_O_0413
//
//  Created by pan dabo on 14-4-13.
//  Copyright (c) 2014年 pan dabo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Book.h"
#import "Person.h"
#import "AppleDevice.h"

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        Book *book = [[Book alloc] init];
        
        Author *author = [[Author alloc] init];
        [author setValue:@"panda" forKey:@"_name"];
        
        
        //键值访问
        [book setValue:@"ios super man" forKey:@"_name"];
        [book setValue:author forKey:@"_author"];
        [book setValue:[NSNumber numberWithFloat:12.3] forKey:@"price"];
        NSNumber *price = [book valueForKeyPath:@"price" ];
        
        NSLog(@"price = %@",price);
        
        NSString *name = [book valueForKey:@"_name"];
        
        NSLog(@"name = %@",name);
        //路径访问
        NSString *author_name = [book valueForKeyPath:@"_author._name"];
        NSLog(@"author_name = %@",author_name);
        
        [book setValue:@"panda_in" forKeyPath:@"_author._name"];
        NSString *author_in = [book valueForKeyPath:@"_author._name"];
        NSLog(@"author_name = %@",author_in);
        
        //一对多
        NSMutableArray *arrayBook = [NSMutableArray arrayWithCapacity:3];
        for (int i = 0; i < 3; i++) {
            Book *book = [[Book alloc] init];
            NSString *name = [NSString stringWithFormat:@"job_%d",i];
            [book setValue:name forKey:@"_name"];
            [book setValue:[NSNumber numberWithFloat:(12+i)] forKey:@"price"];
            [arrayBook addObject:book];
            [book release];
        }
        
        [book setValue:arrayBook forKey:@"_relativeBook"];
        
        NSString *relativeNames = [book valueForKeyPath:@"_relativeBook._name"];
        NSLog(@"relativeNames = %@",relativeNames);
        
        NSString *relativeNames2 = [arrayBook valueForKeyPath:@"_name"];
        NSLog(@"relativeNames2 = %@",relativeNames2);
        
        //运算  数据类型必须是NSNumber
        NSNumber *sumPrice = [book valueForKeyPath:@"_relativeBook.@sum.price"];
        NSLog(@"sumPrice = %@",sumPrice);
        NSNumber *maxPrice = [book valueForKeyPath:@"_relativeBook.@max.price"];
        NSLog(@"maxPrice = %@",maxPrice);
        
        book->_authorStr = @"panda_out";
        NSLog(@"book _autor = %@",book->_authorStr);
        
        
        
        
        NSLog(@"************hometest************");
        
        AppleDevice *mac = [[AppleDevice alloc] init];
        [mac setValue:@"macbook" forKey:@"name"];
        [mac setValue:@9000 forKey:@"price"];
        
        AppleDevice *iphone = [[AppleDevice alloc] init];
        [iphone setValue:@"iphone" forKey:@"name"];
        [iphone setValue:@900 forKey:@"price"];
        
        NSArray *macArray = [NSArray arrayWithObjects:mac,iphone, nil];
        
        [mac release];
        [iphone release];
        
        Person *person = [[Person alloc] init];
        [person setValue:@"job" forKey:@"name"];
        NSLog(@"macArray = %ld",[macArray retainCount]);
        [person setValue:macArray forKey:@"apples"];
        NSLog(@"macArray = %ld",[macArray retainCount]);
        
        NSNumber *sum = [person valueForKeyPath:@"apples.@sum.price"];
        NSLog(@"sum = %@",sum);
        [person release];
        
        
        
    }
    return 0;
}

