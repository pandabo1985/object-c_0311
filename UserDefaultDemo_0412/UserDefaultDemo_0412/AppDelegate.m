//
//  AppDelegate.m
//  UserDefaultDemo_0412
//
//  Created by pan dabo on 14-4-12.
//  Copyright (c) 2014年 pan dabo. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    
    
//     NSArray *array = @[@"123",@"ok",@"happy"];
//    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
//    [userDefaults setInteger:123 forKey:@"numInt"];
//     NSLog(@"====number====");
//    [userDefaults setObject:array forKey:@"array"];
//    NSLog(@"====array====");
//    [userDefaults synchronize];
//    NSLog(@"array retainCount= %d",[array retainCount]);
    
     NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    NSInteger number = [userDefaults integerForKey:@"numInt"];
    NSLog(@"number = %d",number);
    NSArray *array = [userDefaults objectForKey:@"array"];
    NSLog(@"array = %@",array);
    return YES;
}


@end
