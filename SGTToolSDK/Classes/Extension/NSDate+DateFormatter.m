//
//  NSDate+DateFormatter.m
//  SGTToolSDK
//
//  Created by 邵广涛 on 2018/9/26.
//  Copyright © 2018年 SGT. All rights reserved.
//

#import "NSDate+DateFormatter.h"

@implementation NSDate (DateFormatter)


+(NSString*)dateStrFromDate:(NSDate*)date{
    NSDateFormatter*dateFormatter = [[NSDateFormatter alloc]init];
    [dateFormatter setDateFormat:@"YYYY-MM-dd HH:mm:ss"];
    return [dateFormatter stringFromDate:date];
}


+(NSDate*)dateFromDateStr:(NSString*)dateStr{
    NSDateFormatter*dateFormatter = [[NSDateFormatter alloc]init];
    if ([dateStr containsString:@"/"]) {
          [dateFormatter setDateFormat:@"YYYY/MM/dd HH:mm"];
    }else {
          [dateFormatter setDateFormat:@"YYYY-MM-dd HH:mm"];
    }
    return [dateFormatter dateFromString:dateStr];
}


+(NSString*)getDurationStrFromDuration:(NSInteger)duration{
    int minutes = floor(duration/60);
    int sec = trunc(duration - minutes * 60);
    int hours = floor(duration / (60 * 60));
    NSString *minutesStr = [NSString stringWithFormat:@"%02d",minutes];
    NSString *secStr = [NSString stringWithFormat:@"%02d",sec];
    NSString *hoursStr = [NSString stringWithFormat:@"%02d",hours];
    return [NSString stringWithFormat:@"%@:%@:%@",hoursStr,minutesStr,secStr];
}
@end
