//
//  NSString+StringCategory.h
//  SGTToolSDK
//
//  Created by 邵广涛 on 2018/9/26.
//  Copyright © 2018年 SGT. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (StringCategory)

/**
 *  把格式化的JSON格式的字符串转换成字典
 *  JSON格式的字符串
 *  @return 返回字典
 */
- (id)dictionaryFromJSONString;

/**
 *  用正则验证字符串
 *  @param regex 正则表达式
 *  @return 返回BOOL
 */
- (BOOL)verifyOfRegex:(NSString *)regex;

- (BOOL)validateMobile;

+ (NSString *)stringWithCurrentDate:(NSString *)dateFormat;

+ (NSString *)stringWithDate:(NSDate *)date dateFormat:(NSString *)dateFormat;

//判断字符串中重复字符的个数
- (int)calculateSubStringCount:(NSString *)str;
@end
