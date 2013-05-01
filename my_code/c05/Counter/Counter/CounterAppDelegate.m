//
//  CounterAppDelegate.m
//  Counter
//
//  Created by John P Clements on 12/19/12.
//  Copyright (c) 2012 John P Clements. All rights reserved.
//

#import "CounterAppDelegate.h"

@implementation CounterAppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
}

- (IBAction)countCharacters:(id)sender {
    
    NSString *string = [_textField stringValue];
    
    if ([string length] > 0) {
        NSString *message = [NSString stringWithFormat:@"'%@' has %ld characters.", string, [string length]];
        [_label setStringValue:message];
    } else {
        [_label setStringValue:@"Please enter a string"];
    }
}
@end
