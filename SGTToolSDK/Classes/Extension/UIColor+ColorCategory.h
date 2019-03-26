//
//  UIColor+ColorCategory.h
//  SGTToolSDK
//
//  Created by 邵广涛 on 2018/9/26.
//  Copyright © 2018年 SGT. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (ColorCategory)

/// 用于选中和主要文字 0x4690ef
+ (UIColor *)mainColor;

/// 用于默认图标和次要文字 0x707f93
+ (UIColor *)secondaryColor;

/// 用于置灰图标和提示文字 0xa6b3c4
+ (UIColor *)promptTextGrayColor;

/// 用于设备置灰状态背景色 0xd7dfea
+ (UIColor *)deviceStatusGrayColor;

/// 用于登录页注册按钮背景色 0xeaeff5
+ (UIColor *)registeredBackgroundColor;

/// 用于分割线颜色 0xd7dce3
+ (UIColor *)dividingLineColor;

/// 用于app底色 0xf1f5f9
+ (UIColor *)appBackgroundColor;

/// 用于底部tabbar背景色 0x2d353f
+ (UIColor *)tabbarBackgroundColor;



@end
