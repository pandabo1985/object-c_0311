//
//  Book.h
//  KVC_O_0413
//
//  Created by pan dabo on 14-4-13.
//  Copyright (c) 2014年 pan dabo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Author.h"

@interface Book : NSObject
{
    @private
    NSString *_name;
    Author *_author;
    
    NSArray *_relativeBook;
    float price;
    
    @public
    NSString *_authorStr;
    
    
}

@end
