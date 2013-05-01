//
//  RM2Document.h
//  RaiseMan-Challenge2
//
//  Created by John P Clements on 12/20/12.
//  Copyright (c) 2012 John P Clements. All rights reserved.
//

#import <Cocoa/Cocoa.h>
@class Person;

@interface RM2Document : NSDocument
{
    NSMutableArray *employees;
    IBOutlet NSTableView *tableView;
}

- (IBAction)createEmployee:(id)sender;
- (IBAction)deletedSelectedEmployees:(id)sender;

@end
