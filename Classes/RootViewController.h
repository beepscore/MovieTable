//
//  RootViewController.h
//  MovieTable02
//
//  Created by Steve Baker on 11/29/09.
//  Copyright Beepscore LLC 2009. All rights reserved.
//

#import "Movie.h"
#import "MovieEditorViewController.h"

@interface RootViewController : UITableViewController {
    NSMutableArray *moviesArray;
    MovieEditorViewController *movieEditor;
    Movie *editingMovie;
}

@property (nonatomic, retain) IBOutlet MovieEditorViewController *movieEditor;

- (IBAction)handleAddTapped;

@end
