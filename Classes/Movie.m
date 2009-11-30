//
//  Movie.m
//  Movie
//
//  Created by Steve Baker on 11/28/09.
//  Copyright 2009 Beepscore LLC. All rights reserved.
//

#import "Movie.h"


@implementation Movie

#pragma mark -
#pragma mark properties
@synthesize title;
@synthesize boxOfficeGross;
@synthesize summary;


#pragma mark Initializers
- (id)init {
    // call designated initializer
    [self initWithTitle:nil
         boxOfficeGross:[NSNumber numberWithFloat:0]
                summary:nil];
    return self;
}


- (id)initWithExampleValues {
    // call designated initializer
    [self initWithTitle:@"Plan 9 from Outer Space"
         boxOfficeGross:[NSNumber numberWithFloat:97.53]
                summary:@"Some think it's one of the worst movies ever made!"];
    return self;
}

- (id)initWithTitle:(NSString*)aTitle 
     boxOfficeGross:(NSNumber*)aBoxOfficeGross 
            summary:(NSString*)aSummary {
    if (self = [super init]) {
        [self setTitle:aTitle];
        [self setBoxOfficeGross:aBoxOfficeGross];
        [self setSummary:aSummary];
    }
    return self;
}


- (void)dealloc {
    self.title = nil;
    self.boxOfficeGross = nil;
    self.summary = nil;
    
    [super dealloc];
}

@end
