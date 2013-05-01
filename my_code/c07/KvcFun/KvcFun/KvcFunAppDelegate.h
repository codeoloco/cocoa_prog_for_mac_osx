//
//  KvcFunAppDelegate.h
//  KvcFun
//
//  Created by John P Clements on 12/20/12.
//  Copyright (c) 2012 John P Clements. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface KvcFunAppDelegate : NSObject <NSApplicationDelegate> {
    int fido;
}

@property (assign) IBOutlet NSWindow *window;
@property (readwrite, assign) int fido;

- (IBAction)incrmentFido:(id)sender;

@end
