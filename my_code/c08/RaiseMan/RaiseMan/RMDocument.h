//
//  RMDocument.h
//  RaiseMan
//
//  Created by John P Clements on 12/20/12.
//  Copyright (c) 2012 John P Clements. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface RMDocument : NSDocument {
    NSMutableArray *employees;
}
- (void)setEmployees:(NSMutableArray *)a;

@end
