//
//  Person.h
//  KVODemo
//
//  Created by Odie on 7/26/16.
//  Copyright © 2016 Dan Tan. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Account;

@interface Person : NSObject

- (void)registerAsObserverForAccount:(Account*)account;

- (void)removeObserverForAccount:(Account*)account;

@end
