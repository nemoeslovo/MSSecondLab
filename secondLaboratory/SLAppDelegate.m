//
//  SLAppDelegate.m
//  secondLaboratory
//
//  Created by Danila Kolesnikov on 3/3/13.
//  Copyright (c) 2013 dandandan. All rights reserved.
//

#import "SLAppDelegate.h"
#import "SLAutomat.h"

@implementation SLAppDelegate {
    SLAutomat *automat;
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    automat = [[SLAutomat alloc] init];
}

- (IBAction)onX1Click:(id)sender {
    [self changeLabelsAfterInput:0];
}

- (IBAction)onX2Click:(id)sender {
    [self changeLabelsAfterInput:1];
}

- (IBAction)onX3Click:(id)sender {
    [self changeLabelsAfterInput:2];
}

- (void)changeLabelsAfterInput:(NSInteger)input {
    [[self outputLabel] setIntegerValue:[automat getOutputByInput:input] + 1];
    [[self currentState] setIntegerValue:[automat currentState] + 1 ];
}

@end
