//
//  main.m
//  lottery
//
//  Created by John P Clements on 12/12/12.
//  Copyright (c) 2012 John P Clements. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LotteryEntry.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // Create the date object
        NSDate *now = [[NSDate alloc] init];
        NSCalendar *cal = [NSCalendar currentCalendar];
        NSDateComponents *weekComponents = [[NSDateComponents alloc] init];
        // Seed the random number generator
        srandom((unsigned)time(NULL));
        NSMutableArray *array;
        array = [[NSMutableArray alloc] init];
        
        int i;
        for (i = 0; i < 10; i++) {
            
            [weekComponents setWeek:i];
            
            // Create a date/time object that is 'i' weeks from now
            NSDate *iWeeksFromNow;
            iWeeksFromNow = [cal dateByAddingComponents:weekComponents
                                                 toDate:now
                                                options:0];
            
            // Create a new instance of LotteryEntry
            LotteryEntry *newEntry = [[LotteryEntry alloc]
                                      initWithEntryDate:iWeeksFromNow];
            //[newEntry setEntryDate:iWeeksFromNow];
            
            // Add the LotteryEntry object to the array
            [array addObject:newEntry];
        }
        
        for (LotteryEntry *entryToPrint in array) {
            // Display its contents
            NSLog(@"%@", entryToPrint);
        }
        
    }
    return 0;
}

