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

@interface Account : NSObject
@property (atomic, strong, readwrite)NSNumber *balances;
@property (atomic, strong, readwrite)NSNumber *interestRate;

@end
