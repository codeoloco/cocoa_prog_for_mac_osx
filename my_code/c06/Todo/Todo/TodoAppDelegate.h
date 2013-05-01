//
//  TodoAppDelegate.h
//  Todo
//
//  Created by John P Clements on 12/20/12.
//  Copyright (c) 2012 John P Clements. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface TodoAppDelegate : NSObject <NSApplicationDelegate>
{
    NSMutableArray *_todos;
}

@property (assign) IBOutlet NSWindow *window;
@property (weak) IBOutlet NSTextField *textfield;
//@property (weak) IBOutlet NSScrollView *tableview;
@property (weak) IBOutlet NSTableView *tableview;

- (IBAction)createNewItem:(id)sender;

@end
