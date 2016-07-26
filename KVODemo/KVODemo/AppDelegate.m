//
//  AppDelegate.m
//  KVODemo
//
//  Created by Odie on 7/26/16.
//  Copyright © 2016 Dan Tan. All rights reserved.
//

#import "AppDelegate.h"
#import "Account.h"
#import "Person.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@property (strong) Account *account;
@property (strong) Person *persion;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    
    self.persion = [[Person alloc] init];
    self.account = [[Account alloc] init];
    
    [self.persion registerAsObserverForAccount:self.account];
    [self.account setInterestRate:@20];
    [self.account setValue:@30 forKey:INTERESTRATE];

    [self setValue:@40 forKeyPath:@"account.interestRate"];

    [self.account setBalance:@33];
    
    self.account.lastName = @"Tan";
    self.account.firstName = @"Dan";
    
    [self.account setBalances:[NSNumber numberWithInt:10]];
    
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    
    [self.persion removeObserverForAccount:self.account];
}

@end
