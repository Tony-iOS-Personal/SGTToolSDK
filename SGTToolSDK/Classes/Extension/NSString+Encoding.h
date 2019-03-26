//
//  NSString+Encoding.h
//  SGTToolSDK
//
//  Created by 邵广涛 on 2018/9/26.
//  Copyright © 2018年 SGT. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Encoding)

- (NSString *)URLEncode;
- (NSString *)URLDecode;
- (NSString *)Base64Encode;
- (NSString *)MD5Encode;
- (NSString *)SHA1Encode;
- (NSString *)encryptUseDES:(NSString *)key;
- (NSString *)decryptUserDES:(NSString *)key;
- (NSString *)encryptUseDES:(NSString *)key iv:(NSString *)iv;
- (NSString *)decryptUseDES:(NSString *)key iv:(NSString *)iv;
+ (NSString *)hmac_sha1:(NSString *)key text:(NSString *)text;

@end
