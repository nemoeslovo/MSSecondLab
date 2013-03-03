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
    for (int i = 0; i < 20; i++) {

        NSInteger input  = arc4random_uniform(3);
        NSInteger output = [automat getAutomatStateByInput:input];
    }
}

@end
