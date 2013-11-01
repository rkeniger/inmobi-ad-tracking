

#import "TestAppDelegate.h"
#import "TestViewController.h"

#import "IMAdTracker.h"
#import "IMCommonUtil.h"

#define INMOBI_ADTRACKER_APP_ID @"XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"

@implementation TestAppDelegate

@synthesize window = _window;
@synthesize viewController = _viewController;

- (void)dealloc
{
    [_window release];
    [_viewController release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions 
{
    [IMCommonUtil setLogLevel:IMLogLevelTypeDebug];
    [IMAdTracker initWithAppID:INMOBI_ADTRACKER_APP_ID];
    [IMAdTracker reportAppDownloadGoal];
    
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    self.viewController = [[[TestViewController alloc] init] autorelease];
    
    self.window.rootViewController = self.viewController;
    [self.window makeKeyAndVisible];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
}
- (void)applicationDidEnterBackground:(UIApplication *)application {
}
- (void)applicationDidBecomeActive:(UIApplication *)application {
}
- (void)applicationWillTerminate:(UIApplication *)application {
}

@end
