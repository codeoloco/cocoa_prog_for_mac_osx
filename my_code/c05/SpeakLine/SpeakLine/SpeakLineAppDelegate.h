//
//  SpeakLineAppDelegate.h
//  SpeakLine
//
//  Created by John P Clements on 12/19/12.
//  Copyright (c) 2012 John P Clements. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface SpeakLineAppDelegate : NSObject <NSApplicationDelegate>
{
    NSSpeechSynthesizer *_speechSynth;
}

@property (assign) IBOutlet NSWindow *window;
@property (weak) IBOutlet NSTextField *textField;

- (IBAction)stopIt:(id)sender;
- (IBAction)asayIt:(id)sender;

@end
