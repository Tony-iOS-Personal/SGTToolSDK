//
//  NSDate+DateFormatter.h
//  SGTToolSDK
//  时间转换
//  Created by 邵广涛 on 2018/9/26.
//  Copyright © 2018年 SGT. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (DateFormatter)



+(NSString*)dateStrFromDate:(NSDate*)date;

+(NSDate*)dateFromDateStr:(NSString*)dateStr;


+(NSString*)getDurationStrFromDuration:(NSInteger)duration;



@end
