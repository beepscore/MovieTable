//
//  MovieEditorViewController.h
//  Movie
//
//  Created by Steve Baker on 11/29/09.
//  Copyright 2009 Beepscore LLC. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Movie;


@interface MovieEditorViewController : UIViewController <UITextFieldDelegate> {

    // instance variables
    Movie *movie;
    UITextField *titleField;
    UITextField *boxOfficeGrossField;
    UITextField *summaryField;    
}

#pragma mark -
#pragma mark properties
@property(nonatomic,retain)Movie *movie;
@property(nonatomic,retain)IBOutlet UITextField *titleField;
@property(nonatomic,retain)IBOutlet UITextField *boxOfficeGrossField;
@property(nonatomic,retain)IBOutlet UITextField *summaryField;

- (IBAction)done;

@end
