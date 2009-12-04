//
//  RootViewController.h
//  MovieTable
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
    UISegmentedControl *sortControl;
}

@property (nonatomic, retain) IBOutlet MovieEditorViewController *movieEditor;
@property (nonatomic, retain) IBOutlet UITableViewCell *nibLoadedCell;
@property (nonatomic, retain) IBOutlet UISegmentedControl *sortControl;

- (IBAction)handleAddTapped;
- (IBAction)handleSortChanged;

@end
