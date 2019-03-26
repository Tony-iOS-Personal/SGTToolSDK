//
//  NSArray+ArrayCategory.m
//  SGTToolSDK
//
//  Created by 邵广涛 on 2018/9/26.
//  Copyright © 2018年 SGT. All rights reserved.
//

#import "NSArray+ArrayCategory.h"

@implementation NSArray (ArrayCategory)

//- (NSString *)descriptionWithLocale:(id)locale {
//    if (![self isKindOfClass:[NSArray class]]) {
//        return @"**** class descriptionWithLocale error! & the class is not kind of NSArray ****";
//    }
//
//    NSMutableString *msr = [NSMutableString string];
//    [msr appendString:@"["];
//    for (id obj in self) {
//        [msr appendFormat:@"\n\t%@,",obj];
//    }
//    //去掉最后一个逗号（,）
//    if ([msr hasSuffix:@","]) {
//        NSString *str = [msr substringToIndex:msr.length - 1];
//        msr = [NSMutableString stringWithString:str];
//    }
//    [msr appendString:@"\n]"];
//    return msr;
//}



- (id)objectToJSONString {
    
    if (self == nil) { return nil; }
    
    NSError *parseError;
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:self
                                                       options:NSJSONWritingPrettyPrinted
                                                         error:&parseError];
    
    if(parseError) {
//        NSLog(@"\n转json失败：%@",parseError);
        return nil; }
    
    NSString *jsonString = [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
    
    return jsonString;
    
}

@end
