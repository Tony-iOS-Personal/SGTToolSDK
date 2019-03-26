//
//  UIColor+Hex.h
//  SGTToolSDK
//
//  Created by 邵广涛 on 2018/9/26.
//  Copyright © 2018年 SGT. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (Hex)

+ (instancetype)colorWithHex:(NSUInteger)hex;
+ (instancetype)colorWithHex:(NSUInteger)hex alpha:(CGFloat)alpha;

+(instancetype)hexStringToColor:(NSString *)stringToConvert;
+(instancetype)hexStringToColor:(NSString *)stringToConvert andAlpha:(CGFloat)alpha;

@end
