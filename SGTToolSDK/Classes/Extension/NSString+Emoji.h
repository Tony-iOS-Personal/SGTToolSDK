//
//  NSString+Emoji.h
//  SGTToolSDK
//
//  Created by 邵广涛 on 2018/9/26.
//  Copyright © 2018年 SGT. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Emoji)
// 系统自带emoji
- (BOOL)containsEmoji;
// 第三方键盘emoji
- (BOOL)containsThirdEmoji;
// 中文九宫格输入键盘
- (BOOL)isNineKeyBoard;

@end
