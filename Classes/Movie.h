//
//  Movie.h
//  Movie
//
//  Created by Steve Baker on 11/28/09.
//  Copyright 2009 Beepscore LLC. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Movie : NSObject {

    NSString *title;
    NSNumber *boxOfficeGross;
    NSString *summary;
}

@property(nonatomic,copy)NSString *title;
@property(nonatomic,copy)NSNumber *boxOfficeGross;
@property(nonatomic,copy)NSString *summary;

// designated initializer
- (id)initWithTitle:(NSString*)aTitle
     boxOfficeGross:(NSNumber*)aBoxOfficeGross 
            summary:(NSString*)aSummary;

- (id)initWithExampleValues;

@end
