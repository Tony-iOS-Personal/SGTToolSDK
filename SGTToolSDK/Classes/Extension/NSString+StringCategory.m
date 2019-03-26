//
//  NSString+StringCategory.m
//  SGTToolSDK
//
//  Created by 邵广涛 on 2018/9/26.
//  Copyright © 2018年 SGT. All rights reserved.
//

#import "NSString+StringCategory.h"

@implementation NSString (StringCategory)


- (id)dictionaryFromJSONString {
    
    if (self == nil) { return nil; }
    
    NSData *jsonData = [self dataUsingEncoding:NSUTF8StringEncoding];
    NSError *err;
    NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:jsonData
                                                        options:NSJSONReadingMutableContainers
                                                          error:&err];
    
    if(err) {
        NSLog(@"\njson解析失败：%@",err);
        return nil; }
    
    return dic;
}

- (BOOL)verifyOfRegex:(NSString *)regex {
    
    NSPredicate *regextest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regex];
    
    BOOL flag = [regextest evaluateWithObject:self];
    
    return flag;
}

- (BOOL)validateMobile {
    NSString *allMobile = @"^(13|14|15|16|17|18|19)\\d{9}$";
    return [self verifyOfRegex:allMobile];
    
}

+ (NSString *)stringWithCurrentDate:(NSString *)dateFormat {
    return [self stringWithDate:[NSDate date] dateFormat:dateFormat];
}

+ (NSString *)stringWithDate:(NSDate *)date dateFormat:(NSString *)dateFormat {
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    dateFormatter.dateFormat = dateFormat ?: @"yyyy-MM-dd hh:mm:ss";
    NSString *dateString = [dateFormatter stringFromDate:date];
    return dateString;
}


- (int)calculateSubStringCount:(NSString *)str
{
    ////@"abcd123abcdrgabc"
    int count = 0;
    NSRange range = [self rangeOfString:str];
    if (range.location == NSNotFound)
    {
        return count;
    }
    //声明一个临时字符串,记录截取之后的字符串
    NSString * subStr = self;
    while (range.location != NSNotFound) {
        //只要进入循环就要count++
        count++;
        //每次记录之后,把找到的字串截取掉
        //range.location + range.length 得出的结果就是我们要截取的字符串起始索引的位置
        subStr = [subStr substringFromIndex:range.location + range.length];
        //每一次截取之后,要判断一些,截取完成剩余部分字符串,是否还有子串存在
        //如果存在,我们的while循环会继续运行,如果不存在while循环结束
        range = [subStr rangeOfString:str];
    }
    
    return count;
    
}

@end
