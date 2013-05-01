//
//  LotteryEntry.h
//  lottery
//
//  Created by John P Clements on 12/12/12.
//  Copyright (c) 2012 John P Clements. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LotteryEntry : NSObject{
    NSDate *entryDate;
    int firstNumber;
    int secondNumber;
}

-(id)initWithEntryDate:(NSDate *)theDate;
-(void)setEntryDate:(NSDate *)date;
-(NSDate *)entryDate;
-(int)firstNumber;
-(int)secondNumber;

@end
