//
//  WindowSizerAppDelegate.m
//  WindowSizer
//
//  Created by John P Clements on 12/19/12.
//  Copyright (c) 2012 John P Clements. All rights reserved.
//

#import "WindowSizerAppDelegate.h"

@implementation WindowSizerAppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
}

- (NSSize)windowWillResize:(NSWindow *)sender toSize:(NSSize)frameSize
{
    return NSMakeSize(frameSize.width, frameSize.width * 2);
}

@end
