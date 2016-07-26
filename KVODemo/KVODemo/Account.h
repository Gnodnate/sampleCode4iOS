//
//  Account.h
//  KVODemo
//
//  Created by Odie on 7/26/16.
//  Copyright © 2016 Dan Tan. All rights reserved.
//

#import <Foundation/Foundation.h>


#define BALANCE @"balance"
#define INTERESTRATE @"interestRate"
#define FULLNAME @"fullName"

@interface Account : NSObject
@property (atomic, copy, readwrite)NSString *firstName;
@property (atomic, copy, readwrite)NSString *lastName;
@property (atomic, strong, readwrite)NSNumber *balances;
@property (atomic, strong, setter=setBalance:,getter=balance)NSNumber *balance;
@property (atomic, strong, readwrite)NSNumber *interestRate;

@end
