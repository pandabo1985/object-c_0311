//
//  Person.h
//  DelegateFindHouse_0330
//
//  Created by pan dabo on 14-3-30.
//  Copyright (c) 2014年 pan dabo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FindApartment.h"

//@protocol PersonDelegate <NSObject>
//
//-(void)buySomething;
//
//@end
@protocol PersonDelegate;

@interface Person : NSObject
{
    @private
    NSString *_name;
    id<PersonDelegate> __unsafe_unretained_personDelegate;
    id<FindApartment> __unsafe_unretained_delegate;
    HouseRent rent;
}

@property(nonatomic,copy)NSString *name;
@property(nonatomic,assign)id<FindApartment> delegate;

-(id) initWihtName:(NSString *) name withDelegate:(id<FindApartment>)delegate;
-(void) wantToFindApartment;

@end


@protocol PersonDelegate <NSObject>

-(void)buySomething;

@end
