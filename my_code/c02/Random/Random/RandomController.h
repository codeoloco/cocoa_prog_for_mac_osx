//
//  RandomController.h
//  Random
//
//  Created by John P Clements on 12/11/12.
//  Copyright (c) 2012 John P Clements. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RandomController : NSObject {
    IBOutlet NSTextField *textField;
}

-(IBAction)seed:(id)sender;
-(IBAction)generate:(id)sender;

@end
