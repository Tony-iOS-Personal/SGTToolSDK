//
//  NSDictionary+DictionaryCategory.m
//  SGTToolSDK
//
//  Created by 邵广涛 on 2018/9/26.
//  Copyright © 2018年 SGT. All rights reserved.
//

#import "NSDictionary+DictionaryCategory.h"


@implementation NSDictionary (DictionaryCategory)

//- (NSString *)descriptionWithLocale:(id)locale {
//    if (![self isKindOfClass:[NSDictionary class]]) {
//        return @"**** class descriptionWithLocale error! & the class is not kind of NSDictionary ****";
//    }
//    
//    NSMutableString *msr = [NSMutableString string];
//    [msr appendString:@"{"];
//    [self enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop) {
//        [msr appendFormat:@"\n\t%@ = %@,",key,obj];
//    }];
//    //去掉最后一个逗号（,）
//    if ([msr hasSuffix:@","]) {
//        NSString *str = [msr substringToIndex:msr.length - 1];
//        msr = [NSMutableString stringWithString:str];
//    }
//    [msr appendString:@"\n}"];
//    return msr;
//}



- (id)objectToJSONString {
    
    if (self == nil) { return nil; }
    
    NSError *parseError;
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:self
                                                       options:NSJSONWritingPrettyPrinted
                                                         error:&parseError];
    
    if(parseError) { NSLog(@"\n转json失败：%@",parseError); return nil; }
    
    NSString *jsonString = [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
    
    return jsonString;
    
}

@end
