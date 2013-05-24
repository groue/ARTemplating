//
//  ARAppDelegate.m
//  ARTemplating
//
//  Created by Alex Reid on 23/05/2013.
//
//

#import "ARAppDelegate.h"

#import "ARViewController.h"
#import "ARNativeTemplateViewController.h"

@implementation ARAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    UIViewController *jsVC = [[ARViewController alloc] initWithNibName:@"ARViewController" bundle:nil];
    UIViewController *grVC = [[ARNativeTemplateViewController alloc] initWithNibName:@"ARNativeTemplateViewController" bundle:nil];

    jsVC.title = @"JSMustache";
    grVC.title = @"GRMustache";

    self.tabBarController = [[UITabBarController alloc] init];
    self.tabBarController.viewControllers = @[jsVC, grVC];
    self.window.rootViewController = self.tabBarController;
    [self.window makeKeyAndVisible];
    return YES;
}

@end
