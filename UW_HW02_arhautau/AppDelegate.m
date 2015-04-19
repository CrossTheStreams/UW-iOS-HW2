//
//  AppDelegate.m
//  UW_HW02_arhautau
//
//  Created by Andrew Hautau on 4/18/15.
//  Copyright (c) 2015 Andrew Hautau. All rights reserved.
//

#import "AppDelegate.h"
#import "DataViewController.h"
#import "ColorCounterTabBarController.h"
#import "ColorViewController.h"

@interface AppDelegate ()


@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor lightGrayColor];
    
    ColorCounterTabBarController *tabViewController = [[ColorCounterTabBarController alloc] init];
    [tabViewController setColorCounts: [NSMutableDictionary dictionaryWithDictionary:@{@"red": @0, @"green": @0, @"blue": @0}]];
    
    ColorViewController *colorVC = [[ColorViewController alloc] initWithNibName:@"ColorViewController" bundle: nil];
    UITabBarItem* colorTabBarItem = [[UITabBarItem alloc] initWithTitle:@"Colors" image:[UIImage imageNamed:@"colors"] tag:0];
    [colorVC setTabBarItem:colorTabBarItem];
    
    DataViewController *dataVC = [[DataViewController alloc] initWithNibName:@"DataViewController" bundle:nil];
    UITabBarItem* dataTabBarItem = [[UITabBarItem alloc] initWithTitle:@"Data" image:[UIImage imageNamed:@"data"] tag:1];
    [dataVC setTabBarItem:dataTabBarItem];

    [tabViewController setViewControllers:@[colorVC, dataVC]];
    
    self.window.rootViewController = tabViewController;
    
    [self.window makeKeyAndVisible];
        [[NSNotificationCenter defaultCenter] postNotificationName:@"incrementColorCount" object:nil];
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
