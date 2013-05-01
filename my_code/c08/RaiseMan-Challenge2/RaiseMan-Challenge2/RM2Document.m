//
//  RM2Document.m
//  RaiseMan-Challenge2
//
//  Created by John P Clements on 12/20/12.
//  Copyright (c) 2012 John P Clements. All rights reserved.
//

#import "RM2Document.h"
#import "Person.h"

@implementation RM2Document

- (id)init
{
    self = [super init];
    if (self) {
        employees = [[NSMutableArray alloc] init];
    }
    return self;
}

#pragma mark Action methods

- (IBAction)deletedSelectedEmployees:(id)sender
{
    // Which row is selected?
    NSIndexSet *rows = [tableView selectedRowIndexes];
    
    // Is the selection empty?
    if ([rows count] == 0) {
        NSBeep();
        return;
    }
    
    [employees removeObjectsAtIndexes:rows];
    [tableView reloadData];
}

- (IBAction)createEmployee:(id)sender
{
    Person *newEmployee = [[Person alloc] init];
    [employees addObject:newEmployee];
    [tableView reloadData];
}

#pragma mark Table view dataSource methods

- (NSInteger)numberOfRowsInTableView:(NSTableView *)tv
{
    return [employees count];
}

- (id)tableView:(NSTableView *)tv
    objectValueForTableColumn:(NSTableColumn *)tableColumn
            row:(NSInteger)row
{
    // What is the identifier for the column?
    NSString *identifier = [tv identifier];
    
    // What person?
    Person *person = [employees objectAtIndex:row];
    
    // What is the value of the attribute named identifier?
    return [person valueForKey:identifier];
}

- (NSString *)windowNibName
{
    // Override returning the nib file name of the document
    // If you need to use a subclass of NSWindowController or if your document supports multiple NSWindowControllers, you should remove this method and override -makeWindowControllers instead.
    return @"RM2Document";
}

- (void)windowControllerDidLoadNib:(NSWindowController *)aController
{
    [super windowControllerDidLoadNib:aController];
    // Add any code here that needs to be executed once the windowController has loaded the document's window.
}

+ (BOOL)autosavesInPlace
{
    return YES;
}

- (NSData *)dataOfType:(NSString *)typeName error:(NSError **)outError
{
    // Insert code here to write your document to data of the specified type. If outError != NULL, ensure that you create and set an appropriate error when returning nil.
    // You can also choose to override -fileWrapperOfType:error:, -writeToURL:ofType:error:, or -writeToURL:ofType:forSaveOperation:originalContentsURL:error: instead.
    NSException *exception = [NSException exceptionWithName:@"UnimplementedMethod" reason:[NSString stringWithFormat:@"%@ is unimplemented", NSStringFromSelector(_cmd)] userInfo:nil];
    @throw exception;
    return nil;
}

- (BOOL)readFromData:(NSData *)data ofType:(NSString *)typeName error:(NSError **)outError
{
    // Insert code here to read your document from the given data of the specified type. If outError != NULL, ensure that you create and set an appropriate error when returning NO.
    // You can also choose to override -readFromFileWrapper:ofType:error: or -readFromURL:ofType:error: instead.
    // If you override either of these, you should also override -isEntireFileLoaded to return NO if the contents are lazily loaded.
    NSException *exception = [NSException exceptionWithName:@"UnimplementedMethod" reason:[NSString stringWithFormat:@"%@ is unimplemented", NSStringFromSelector(_cmd)] userInfo:nil];
    @throw exception;
    return YES;
}

@end
