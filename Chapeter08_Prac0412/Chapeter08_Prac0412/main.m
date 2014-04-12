//
//  main.m
//  Chapeter08_Prac0412
//
//  Created by pan dabo on 14-4-12.
//  Copyright (c) 2014年 pan dabo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Adrress.h"
#import "PersonPlist.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Adrress *adrress = [[Adrress alloc] init];
        adrress.name = @"happy san";
        adrress.sex = @"male";
        adrress.age = @12;
        adrress.adrr = @"beijing";
        
        Adrress *adrress2 = [[Adrress alloc] init];
        adrress2.name = @"happy si";
        adrress2.sex = @"female";
        adrress2.age = @18;
        adrress2.adrr = @"Henan";
        
        NSArray *array = @[adrress,adrress2];
        NSLog(@"adrress retainCount = %ld",[adrress retainCount]);
        [adrress release];
        [adrress2 release];
         NSLog(@"adrress retainCount = %ld",[adrress retainCount]);
        
        NSString *homePaht = NSHomeDirectory();
        NSString *path = [homePaht stringByAppendingPathComponent:@"address.archive"];
        BOOL success = [NSKeyedArchiver archiveRootObject:array toFile:path];
        if (success) {
            NSLog(@"archive success!");
        }
        
        NSArray *unarchiverArray = [NSKeyedUnarchiver unarchiveObjectWithFile:path];
        NSLog(@"unarchiverArray = %@",unarchiverArray);
        NSMutableArray *mutable = [NSMutableArray arrayWithArray:unarchiverArray];
        
        Adrress *adrress3 = [[Adrress alloc] init];
        adrress3.name = @"happy wu";
        adrress3.sex = @"female&male";
        adrress3.age = @21;
        adrress3.adrr = @"Beijing";
        
        [mutable addObject:adrress3];
        [adrress3 release];
        BOOL newSuccess = [NSKeyedArchiver archiveRootObject:mutable toFile:path];
        if (newSuccess) {
            NSLog(@"newSuccess");
        }
        
        NSArray *newArray = [NSKeyedUnarchiver unarchiveObjectWithFile:path];
        NSLog(@"unarchiverArray = %@",newArray);
        
        NSLog(@"****************plit file prac!***************");

        NSString *plistPath = [NSHomeDirectory() stringByAppendingPathComponent:@"Person.plist"];
        NSDictionary *plist = [NSDictionary dictionaryWithContentsOfFile:plistPath];
        NSArray *persons = [plist objectForKey:@"person"];
        NSMutableArray *personArray = [NSMutableArray arrayWithCapacity:persons.count];
        
        for (NSDictionary *dic in persons) {
            PersonPlist *person = [[PersonPlist alloc] init];
            person.name = [dic objectForKey:@"name"];
            person.age = [dic objectForKey:@"age"];
            person.birthDay = [dic objectForKey:@"birthDay"];
            [personArray addObject:person];
            [person release];
        }
        
        NSLog(@"personArray = %@",personArray);
    }
    return 0;
}


