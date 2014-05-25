//
//  JapaneseCalendarYear.h
//  JapaneseCalendarYear
//
//  Created by hypermkt
//
//

#import <Foundation/Foundation.h>

@interface JapaneseCalendarYear : NSObject

- (NSString *) toJapaneseCalendarYear:(int) year;
- (int) calculateJapaneseCalendarYear:(int) year;
- (void) setBaseJapaneseCalendar:(int) year;

@end
