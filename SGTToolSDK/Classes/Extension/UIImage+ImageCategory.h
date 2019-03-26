//
//  UIImage+ImageCategory.h
//  SGTToolSDK
//  图片处理
//  Created by 邵广涛 on 2018/9/26.
//  Copyright © 2018年 SGT. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (ImageCategory)

/** 照片旋转90问题 */
- (UIImage *)fixOrientation;

/* 1*1px的 */
+ (UIImage *)imageWithColor:(UIColor *)color;
/* size大小的 */
+ (UIImage *)imageWithColor:(UIColor *)color size:(CGSize)size;
/* 圆角的 可拉伸的 */
+ (UIImage *)resizableImageWithColor:(UIColor *)color cornerRadius:(CGFloat)cornerRadius;

+ (NSData *)reSizeImageData:(UIImage *)sourceImage maxImageSize:(CGFloat)maxImageSize maxSizeWithKB:(CGFloat) maxSize;

@end
