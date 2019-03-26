//
//  UIColor+ColorCategory.m
//  SGTToolSDK
//
//  Created by 邵广涛 on 2018/9/26.
//  Copyright © 2018年 SGT. All rights reserved.
//

#import "UIColor+ColorCategory.h"
#import "UIColor+Hex.h"
@implementation UIColor (ColorCategory)


+ (UIColor *)mainColor {
    return [UIColor colorWithHex:0x4690ef];
}

+ (UIColor *)secondaryColor {
    return [UIColor colorWithHex:0x707f93];
}

+ (UIColor *)promptTextGrayColor {
    return [UIColor colorWithHex:0xa6b3c4];
}

+ (UIColor *)deviceStatusGrayColor {
    return [UIColor colorWithHex:0xd7dfea];
}

+ (UIColor *)registeredBackgroundColor {
    return [UIColor colorWithHex:0xeaeff5];
}

+ (UIColor *)dividingLineColor {
    return [UIColor colorWithHex:0xd7dce3];
}

+ (UIColor *)appBackgroundColor {
    return [UIColor colorWithHex:0xf1f5f9];
}

+ (UIColor *)tabbarBackgroundColor {
    return [UIColor colorWithHex:0x2d353f];
}



@end
