//
//  SpeakLineAppDelegate.m
//  SpeakLine
//
//  Created by John P Clements on 12/19/12.
//  Copyright (c) 2012 John P Clements. All rights reserved.
//

#import "SpeakLineAppDelegate.h"

@implementation SpeakLineAppDelegate

- (id)init
{
    self = [super init];
    if (self) {
        // Logs can help the beginner understand what
        // is happening and hunt down bugs
        NSLog(@"init");
        
        // Create a new instance of NSSpeechSynthesizer
        // with the default voice
        _speechSynth = [[NSSpeechSynthesizer alloc]
                        initWithVoice:nil];
    }
    
    return self;
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
}

- (IBAction)stopIt:(id)sender {
    NSLog(@"stopping");
    [_speechSynth stopSpeaking];
}

- (IBAction)asayIt:(id)sender {
    NSString *string = [_textField stringValue];
    
    // Is the string zero-length?
    if ([string length] == 0) {
        NSLog(@"string from %@ is of zero-length", _textField);
        return;
    }
    [_speechSynth startSpeakingString:string];
    NSLog(@"Have started to say: %@", string);
}
@end
