//
//  UIViewController+ViewControllerCategory.h
//  SGTToolSDK
//
//  Created by 邵广涛 on 2018/9/26.
//  Copyright © 2018年 SGT. All rights reserved.
//

#import <UIKit/UIKit.h>
@interface UIViewController (ViewControllerCategory)

+ (UIViewController*) currentViewController;

- (UIViewController *)getTopContoller;


/**
 更改RootVC 跳转到TabBarController

 @param sender sender != nil时 即从Login登录
 */
//- (void)presentTabBarRootViewController:(id)sender;


@end
