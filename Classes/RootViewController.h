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
    UITableViewCell *nibLoadedCell;
}

@property (nonatomic, retain) IBOutlet MovieEditorViewController *movieEditor;
@property (nonatomic, retain) IBOutlet UITableViewCell *nibLoadedCell;

- (IBAction)handleAddTapped;

@end
