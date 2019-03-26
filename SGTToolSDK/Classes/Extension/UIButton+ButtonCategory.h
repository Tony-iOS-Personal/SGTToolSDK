//
//  UIButton+ButtonCategory.h
//  SGTToolSDK
//
//  Created by 邵广涛 on 2018/9/26.
//  Copyright © 2018年 SGT. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (ButtonCategory)

/** 根据状态 设置背景颜色 */
- (void)setBackgroundColor:(nullable UIColor *)color forState:(UIControlState)state;
/** */
- (void)setButtonImageWithUrl:(nullable NSURL *)url placeholderImage:(nullable UIImage *)placeholder;

@end
