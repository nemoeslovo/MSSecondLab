//
// Created by danilakolesnikov on 3/3/13.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import <Foundation/Foundation.h>


typedef enum state {
      slS1
    , slS2
    , slS3
    , slS4
} slState;

typedef enum output {
      slY1
    , slY2
} slOutput;


@interface SLAutomat : NSObject

@property(nonatomic) enum state currentState;

- (NSInteger)getOutputByInput:(NSInteger)_input;

@end