//
//  ShadowAppDelegate.h
//  Shadow
//
//  Created by Jacky on 6/20/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ShadowViewController;

@interface ShadowAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet ShadowViewController *viewController;

@end
