//
//  Person.m
//  KVODemo
//
//  Created by Odie on 7/26/16.
//  Copyright © 2016 Dan Tan. All rights reserved.
//

#import "Person.h"
#import "Account.h"

@implementation Person

- (void)registerAsObserverForAccount:(Account*)account {
    [account addObserver:self
              forKeyPath:BALANCE
                 options:(NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld)
                 context:nil]; // wouldn't work
    
    [account addObserver:self
              forKeyPath:INTERESTRATE
                 options:(NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld)
                 context:nil]; // work
}

- (void)removeObserverForAccount:(Account*)account {
    [account removeObserver:self forKeyPath:BALANCE];
    [account removeObserver:self forKeyPath:INTERESTRATE];
}
- (void)observeValueForKeyPath:(NSString *)keyPath
                      ofObject:(id)object
                        change:(NSDictionary *)change
                       context:(void *)context {
    
    if ([keyPath isEqualToString:BALANCE]) {
        NSLog(@"%@ changed %@",keyPath, [change objectForKey:NSKeyValueChangeNewKey]);
        
    } else if ([keyPath isEqualToString:INTERESTRATE]) {
        NSLog(@"%@ changed %@",keyPath, [change objectForKey:NSKeyValueChangeNewKey]);
        
    } else {
        NSLog(@"Get keyPaht = %@", keyPath);
        [super observeValueForKeyPath:keyPath
                             ofObject:object
                               change:change
                              context:context];
    }
}

@end
