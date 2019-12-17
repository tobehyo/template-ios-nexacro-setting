//
//  AppDelegate.h
//  nexacroHelloworld
//
//  Created by TobeGlobal on 2019. 10. 30..
//  Copyright © 2019년 TechSupport. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <nexacro17/NexacroAppDelegate.h>
#import <nexacro17/NexacroMainViewController.h>

//@interface AppDelegate : UIResponder <UIApplicationDelegate>
//
//@property (strong, nonatomic) UIWindow *window;
//
//
//@end

@interface AppViewController : NexacroMainViewController
-(BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation;
@end

@interface AppDelegate : NexacroAppDelegate <UIApplicationDelegate>
-(NexacroMainViewController*)initializeMainViewController;
@end
