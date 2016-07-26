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
@synthesize balance = _balance;
@synthesize firstName = _firstName;
@synthesize lastName = _lastName;

- (instancetype)init {
    self = [super init];
    self.balances = [[NSNumber alloc] initWithInt:0];
    self.interestRate = [[NSNumber alloc] initWithInt:10];
    _firstName = [[NSString alloc] init];
    _lastName = [[NSString alloc] init];
    
    return self;
}

+ (BOOL)automaticallyNotifiesObserversForKey:(NSString *)theKey {
    
    BOOL automatic = NO;
    if ([theKey isEqualToString:@"balance"]) {
        automatic = NO;
    }
    else {
        automatic = [super automaticallyNotifiesObserversForKey:theKey];
    }
    return automatic;
}

//+ (NSSet *)keyPathsForValuesAffectingValueForKey:(NSString *)key {
//    
//    NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
//    
//    if ([key isEqualToString:@"fullName"]) {
//        NSArray *affectingKeys = @[@"lastName", @"firstName"];
//        keyPaths = [keyPaths setByAddingObjectsFromArray:affectingKeys];
//    }
//    return keyPaths;
//}

+ (NSSet *)keyPathsForValuesAffectingFullName {
    return [NSSet setWithObjects:@"lastName", @"firstName", nil];
}
- (NSString *)fullName {
    return [NSString stringWithFormat:@"%@ %@",_firstName, _lastName];
}
- (void)setBalance:(NSNumber *)balance {
    if (_balance != balance) {
        [self willChangeValueForKey:@"balance"];
        _balance = balance;
        [self didChangeValueForKey:@"balance"];
    }
}

- (NSNumber*)balance {
    if (nil == _balance) {
        _balance = [[NSNumber alloc] initWithInt:0];
    }
    return _balance;
}

@end
