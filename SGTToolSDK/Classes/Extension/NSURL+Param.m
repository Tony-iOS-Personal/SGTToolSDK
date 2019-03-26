//
//  NSURL+Param.m
//  SGTToolSDK
//
//  Created by 邵广涛 on 2018/9/26.
//  Copyright © 2018年 SGT. All rights reserved.
//

#import "NSURL+Param.h"
#import "NSString+Encoding.h"

@implementation NSURL (Param)

- (NSString *)valueForParam:(NSString *)param
{
    NSString *result;
    
    NSArray *params = [[self.query URLDecode] componentsSeparatedByString:@"&"];
    for (NSString *pair in params) {
        NSArray *keyValue = [pair componentsSeparatedByString:@"="];
        if (keyValue.count == 2) {
            if ([param isEqualToString:keyValue[0]]) {
                result = keyValue[1];;
                break;
            }
        }
    }
    
    return result;
}

@end
