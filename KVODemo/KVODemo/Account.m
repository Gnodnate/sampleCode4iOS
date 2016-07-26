//
//  Account.m
//  KVODemo
//
//  Created by Odie on 7/26/16.
//  Copyright © 2016 Dan Tan. All rights reserved.
//

#import "Account.h"

@implementation Account
@synthesize balances;
@synthesize interestRate;

- (instancetype)init {
    self = [super init];
    self.balances = [[NSNumber alloc] initWithInt:0];
    self.interestRate = [[NSNumber alloc] initWithInt:10];
    return self;
}
@end
