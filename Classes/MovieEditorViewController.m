//
//  MovieEditorViewController.m
//  Movie
//
//  Created by Steve Baker on 11/29/09.
//  Copyright 2009 Beepscore LLC. All rights reserved.
//

#import "MovieEditorViewController.h"
#import "Movie.h"

@implementation MovieEditorViewController

#pragma mark -
#pragma mark properties
@synthesize movie;
@synthesize titleField;
@synthesize boxOfficeGrossField;
@synthesize summaryField;

/*
 // The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    self.titleField.text = self.movie.title;
    NSNumberFormatter *formatter = [[NSNumberFormatter alloc] init];
    [formatter setNumberStyle:NSNumberFormatterCurrencyStyle];
    self.boxOfficeGrossField.text = 
    [formatter stringFromNumber:self.movie.boxOfficeGross];
    [formatter release];
    self.summaryField.text = self.movie.summary;
}

- (IBAction)done {
    [self.navigationController popViewControllerAnimated:YES];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}

- (void)textFieldDidEndEditing:(UITextField *)textField {
    if (textField == self.titleField) {
        self.movie.title = self.titleField.text;
    } else if (textField == self.boxOfficeGrossField) {
        NSNumberFormatter *formatter = [[NSNumberFormatter alloc] init];
        [formatter setNumberStyle:NSNumberFormatterCurrencyStyle];
        self.movie.boxOfficeGross = 
          [formatter numberFromString:self.boxOfficeGrossField.text];
        [formatter release];
    } else if (textField == self.summaryField) {
        self.movie.summary = self.summaryField.text;
    }
}

/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    self.movie = nil;
    self.titleField = nil;
    self.boxOfficeGrossField = nil;
    self.summaryField = nil;
    
    [super dealloc];
}


@end
