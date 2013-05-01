//
//  TodoAppDelegate.m
//  Todo
//
//  Created by John P Clements on 12/20/12.
//  Copyright (c) 2012 John P Clements. All rights reserved.
//

#import "TodoAppDelegate.h"

@implementation TodoAppDelegate

- (id) init
{
    self = [super init];
    if (self) {
        NSLog(@"init");
        
        _todos = [[NSMutableArray alloc] init];
    }
    
    return self;
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
}

- (IBAction)createNewItem:(id)sender {
    
    NSString *item = [_textfield stringValue];
    
    NSLog(@"adding '%@'", item);
    
    [_todos addObject:item];
    
    [_tableview reloadData];
}

- (NSInteger)numberOfRowsInTableView:(NSTableView *)tv
{
    return (NSInteger)[_todos count];
}

- (id)tableView:(NSTableView *)tv objectValueForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row
{
    NSString *t = [_todos objectAtIndex:row];
    return t;
}

- (void)tableView:(NSTableView *)tv setObjectValue:(id)object forTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row
{
    [_todos replaceObjectAtIndex:row withObject:object];
}
@end
