//
//  NSObject+ObjectCategory.h
//  SGTToolSDK
//
//  Created by 邵广涛 on 2018/9/26.
//  Copyright © 2018年 SGT. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (ObjectCategory)

/**
 *  判断对象是不是空值, 空值返回YES
 *  @return 若为空值则返回YES
 */
- (BOOL)isEmptyObject:(id)object;

- (id)isEmptyObject:(id)object withValue:(id)aID;

+ (NSString *)classString;

@end
