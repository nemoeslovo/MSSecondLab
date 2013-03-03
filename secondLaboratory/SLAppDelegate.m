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

@end
