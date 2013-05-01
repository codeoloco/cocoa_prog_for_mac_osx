//
//  KvcFunAppDelegate.m
//  KvcFun
//
//  Created by John P Clements on 12/20/12.
//  Copyright (c) 2012 John P Clements. All rights reserved.
//

#import "KvcFunAppDelegate.h"

@implementation KvcFunAppDelegate

@synthesize fido;

- (id)init
{
    self = [super init];
    if (self) {
        [self setValue:[NSNumber numberWithInt:5]
                forKey:@"fido"];
        NSNumber *n = [self valueForKey:@"fido"];
        NSLog(@"fido = %@", n);
    }
    return self;
}

- (IBAction)incrmentFido:(id)sender
{
    [self setFido:[self fido] + 1];
}

@end
