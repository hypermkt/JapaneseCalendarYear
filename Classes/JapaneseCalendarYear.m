//
//  JapaneseCalendarYear.m
//  JapaneseCalendarYear
//
//  Created by hypermkt
//
//

#import "JapaneseCalendarYear.h"

@implementation JapaneseCalendarYear
{
    NSMutableArray *japaneseCalendarYears;
    NSDictionary *baseJapaneseCalendarYear;
}

- (id) init
{
    self = [super init];
    if ( self ) {
        japaneseCalendarYears = [NSMutableArray array];
        [japaneseCalendarYears addObject:@{
                                           @"start_year": @1868,
                                           @"key": @"MEIJI",
                                           @"label": @"明治"
                                           }];
        [japaneseCalendarYears addObject:@{
                                           @"start_year": @1912,
                                           @"key": @"TAISHOU",
                                           @"label": @"大正"
                                           }];
        [japaneseCalendarYears addObject:@{
                                           @"start_year": @1926,
                                           @"key": @"SHOUWA",
                                           @"label": @"昭和"
                                           }];
        [japaneseCalendarYears addObject:@{
                                           @"start_year": @1989,
                                           @"key": @"HEISEI",
                                           @"label": @"平成"
                                           }];
    }
    return self;
}

// 和暦変換する
- (NSString *) toJapaneseCalendarYear:(int) year
{
    // 年に該当する基準和暦情報を取得する
    [self setBaseJapaneseCalendar:year];
    
    return [NSString stringWithFormat:@"%@%@年",
            baseJapaneseCalendarYear[@"label"],
            [ NSString stringWithFormat : @"%d", [self calculateJapaneseCalendarYear:year]]
            ];
}

// 和暦年号変換する
- (int) calculateJapaneseCalendarYear:(int) year;
{
    return year - [baseJapaneseCalendarYear[@"start_year"] intValue] +  + 1;
}

// 和暦の基準情報を設定する
- (void) setBaseJapaneseCalendar:(int) year;
{
    NSDictionary *result;
    for (int i=0; i<japaneseCalendarYears.count;i++) {
        NSDictionary *data = japaneseCalendarYears[i];
        if (year >= [data[@"start_year"] integerValue]) {
            result = data;
        }
        
    }
    baseJapaneseCalendarYear = result;
}


@end
