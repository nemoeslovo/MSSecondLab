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


static const NSInteger _transitionTable[3][4] = {
                              {slS2, slS3, slS4, slS2}
                            , {slS4, slS2, slS1, slS1}
                            , {slS1, slS1, slS2, slS4}
                       };

static const NSInteger _outputTable[3][4] = {
                              {slY2, slY1, slY2, slY2}
                            , {slY1, slY1, slY1, slY2}
                            , {slY2, slY2, slY2, slY2}
                       };

@interface SLAutomat ()
- (void)setState:(slState)_state;
@end

@implementation SLAutomat {
    slState currentState;
}

- (id)init {
    self = [super init];
    if (self) {
        [self setState:slS1];
    }
    return self;
}

- (void)setState:(slState)_state {
    NSLog(@"currentState changed from %d to %d", currentState + 1, _state + 1);
    currentState = _state;
}

- (NSInteger)getAutomatStateByInput:(NSInteger)_input {
    NSInteger output   = _outputTable[_input][currentState];
    NSInteger newState = _transitionTable[_input][currentState];
    NSLog(@"for input %d, output is %d", _input + 1, output + 1);
    [self setState:newState];
    return output;
}

@end