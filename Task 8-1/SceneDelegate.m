#import "SceneDelegate.h"
#import "ViewController.h"

@interface SceneDelegate ()

@end

@implementation SceneDelegate


- (void)scene:(UIScene *)scene willConnectToSession:(UISceneSession *)session options:(UISceneConnectionOptions *)connectionOptions {
    UIWindow *window = [[UIWindow alloc] initWithWindowScene:(UIWindowScene *)scene];
        

        

    //    UINavigationController *navigation = [[UINavigationController alloc] initWithRootViewController:[ViewController new]];
        
    //    navigation.navigationItem.title = @"Illia";
        
        
        window.rootViewController = [[UINavigationController alloc] initWithRootViewController:[ViewController new]];
    //    window.rootViewController = [ViewController new];
        
        window.backgroundColor = UIColor.whiteColor;
        
        self.window = window;
        [self.window makeKeyAndVisible];
    
    
}




@end
