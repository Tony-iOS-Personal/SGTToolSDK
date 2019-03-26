//
//  UINavigationController+ShouldPopCategory.h
//  SGTToolSDK
//
//  Created by 邵广涛 on 2018/9/26.
//  Copyright © 2018年 SGT. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol UINavigationControllerShouldPop <NSObject>

- (BOOL)navigationControllerShouldPop:(UINavigationController *)navigationController;
- (BOOL)navigationControllerShouldStartInteractivePopGestureRecognizer:(UINavigationController *)navigationController;

@end

@interface UINavigationController (ShouldPopCategory) <UIGestureRecognizerDelegate>

@end
