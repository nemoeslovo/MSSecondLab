//
//  SLAppDelegate.h
//  secondLaboratory
//
//  Created by Danila Kolesnikov on 3/3/13.
//  Copyright (c) 2013 dandandan. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface SLAppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;
@property (weak) IBOutlet NSTextField *currentState;
@property (weak) IBOutlet NSTextField *outputLabel;

- (IBAction)onX1Click:(id)sender;
- (IBAction)onX2Click:(id)sender;
- (IBAction)onX3Click:(id)sender;


@end
