//
//  NSObject+ObjectCategory.m
//  SGTToolSDK
//
//  Created by 邵广涛 on 2018/9/26.
//  Copyright © 2018年 SGT. All rights reserved.
//

#import "NSObject+ObjectCategory.h"

@implementation NSObject (ObjectCategory)

- (BOOL)isEmptyObject:(id)object {
    
    if (![object isKindOfClass:[NSObject class]]) { return YES; }
    
    if ([object isKindOfClass:[NSNull class]]) { return YES; }
    
    if (object == nil || object == NULL) { return YES; }
    
    if ([object isKindOfClass:[NSString class]])
    {
        if ([[(NSString *)object stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]] length] == 0)
        {
            return YES;
        }
    }
    
    return NO;
}

- (id)isEmptyObject:(id)object withValue:(id)aID {
    return [self isEmptyObject:object] ? aID : object;
    
}

+ (NSString *)classString {
    return NSStringFromClass([self class]);
}

@end
