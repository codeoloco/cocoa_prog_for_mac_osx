//
//  WindowDelegate.m
//  WindowSizer
//
//  Created by John P Clements on 12/19/12.
//  Copyright (c) 2012 John P Clements. All rights reserved.
//

#import "WindowDelegate.h"

@implementation WindowDelegate

- (NSSize)windowWillResize:(NSWindow *)sender toSize:(NSSize)frameSize
{
    NSSize newSize = NSMakeSize(frameSize.width, frameSize.width * 2);
    return newSize;
}

@end
