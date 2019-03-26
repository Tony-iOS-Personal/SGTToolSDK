//
//  NSObject+Additions.h
//  SGTToolSDK
//
//  Created by 邵广涛 on 2018/9/26.
//  Copyright © 2018年 SGT. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSObject (Additions)

- (NSInteger)toInt;
- (NSUInteger)toUInt;
- (NSString *)toString;
- (CGFloat)toFloat;
- (double)toDouble;
- (BOOL)toBool;

- (NSArray *)toArray;
- (NSDictionary *)toDictionary;

- (NSString *)JSONString;

@end
