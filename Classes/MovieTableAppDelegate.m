//
//  MovieTableAppDelegate.m
//  MovieTable
//
//  Created by Steve Baker on 11/29/09.
//  Copyright Beepscore LLC 2009. All rights reserved.
//

#import "MovieTableAppDelegate.h"
#import "RootViewController.h"


@implementation MovieTableAppDelegate

@synthesize window;
@synthesize navigationController;


#pragma mark -
#pragma mark Application lifecycle

- (void)applicationDidFinishLaunching:(UIApplication *)application {    
    
    // Override point for customization after app launch    
	
	[window addSubview:[navigationController view]];
    [window makeKeyAndVisible];
}


- (void)applicationWillTerminate:(UIApplication *)application {
	// Save data if appropriate
}


#pragma mark -
#pragma mark Memory management

- (void)dealloc {
	[navigationController release];
	[window release];
	[super dealloc];
}


@end

