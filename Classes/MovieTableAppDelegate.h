//
//  MovieTableAppDelegate.h
//  MovieTable02
//
//  Created by Steve Baker on 11/29/09.
//  Copyright Beepscore LLC 2009. All rights reserved.
//

@interface MovieTableAppDelegate : NSObject <UIApplicationDelegate> {
    
    UIWindow *window;
    UINavigationController *navigationController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UINavigationController *navigationController;

@end

