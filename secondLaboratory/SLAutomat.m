//
// Created by danilakolesnikov on 3/3/13.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import "SLAutomat.h"



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

@implementation SLAutomat

- (id)init {
    self = [super init];
    if (self) {
        [self setState:slS1];
    }
    return self;
}

- (void)setState:(slState)_state {
    NSLog(@"currentState changed from %d to %d", self.currentState, _state);
    self.currentState = _state;
}

- (NSInteger)getOutputByInput:(NSInteger)_input {
    NSInteger output   = _outputTable[_input][self.currentState];
    NSInteger newState = _transitionTable[_input][self.currentState];
    NSLog(@"for input %d, output is %d", _input, output);
    [self setState:newState];
    return output;
}

@end