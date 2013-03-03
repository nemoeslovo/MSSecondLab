//
// Created by danilakolesnikov on 3/3/13.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import "SLAutomat.h"


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

@implementation SLAutomat {
    slState currentState;
    NSInteger transitionTable[4][3];
    NSInteger outputTable[4][3];
}

- (id)init {
    self = [super init];
    if (self) {
        [self setState:slS1];
        transitionTable =
        {
                {slS2, slS3, slS4, slS2}
              , {slS4, slS2, slS1, slS1}
              , {slS1, slS1, slS2, slS4}
        };

        outputTable =
        {
                {slY2, slY1, slY2, slY2}
              , {slY1, slY1, slY1, slY2}
              , {slY2, slY2, slY2, slY2}
        };


    }
    return self;
}

- (void)setState:(slState)_state {
    NSLog(@"currentState changed from %d to %d", currentState, _state);
    currentState = _state;
}

- (NSInteger)getAutomatStateByInput:(NSInteger)_input {

}

@end