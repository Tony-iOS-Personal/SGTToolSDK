//
//  UIButton+ButtonCategory.m
//  SGTToolSDK
//
//  Created by 邵广涛 on 2018/9/26.
//  Copyright © 2018年 SGT. All rights reserved.
//

#import "UIButton+ButtonCategory.h"
#import "UIImage+ImageCategory.h"

@implementation UIButton (ButtonCategory)

- (void)setBackgroundColor:(nullable UIColor *)color forState:(UIControlState)state {
    
    //    CGRect rect = CGRectMake(0, 0, self.frame.size.width, self.frame.size.height);
    //    UIGraphicsBeginImageContext(rect.size);
    //    CGContextRef context = UIGraphicsGetCurrentContext();
    //    CGContextSetFillColorWithColor(context, [color CGColor]);
    //    CGContextFillRect(context, rect);
    //    UIImage *img = UIGraphicsGetImageFromCurrentImageContext();
    //    UIGraphicsEndImageContext();

    // 使用颜色创建UIImage
    UIImage *pressedColorImg = [UIImage imageWithColor:color size:self.frame.size];
    [self setBackgroundImage:pressedColorImg forState:state];
}

- (void)setButtonImageWithUrl:(nullable NSURL *)url placeholderImage:(nullable UIImage *)placeholder {
    // 根据图片的url下载图片数据
    dispatch_queue_t xrQueue = dispatch_queue_create("loadImage", NULL); // 创建GCD线程队列
    
    dispatch_async(xrQueue, ^{
        // 异步下载图片
        UIImage * img = [UIImage imageWithData:[NSData dataWithContentsOfURL:url]];
        // 主线程刷新UI
        dispatch_async(dispatch_get_main_queue(), ^{
            [self setImage:img ? : placeholder forState:UIControlStateNormal];
        });
    });
}



@end
