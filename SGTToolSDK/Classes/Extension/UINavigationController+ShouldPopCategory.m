//
//  UINavigationController+ShouldPopCategory.m
//  SGTToolSDK
//
//  Created by 邵广涛 on 2018/9/26.
//  Copyright © 2018年 SGT. All rights reserved.
//

#import "UINavigationController+ShouldPopCategory.h"
#import <objc/runtime.h>

static NSString * const kOriginalDelegate = @"kOriginalDelegate";

@implementation UINavigationController (ShouldPopCategory)

+ (void)load {
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        
        Class class = [self class];
        /// 动态绑定代理
        SEL originalVCSelector = @selector(viewDidLoad);
        SEL swizzledVCSelector = @selector(iot_viewDidLoad);
        
        Method originalVCMethod = class_getInstanceMethod(class, originalVCSelector);
        Method swizzledVCMethod = class_getInstanceMethod(class, swizzledVCSelector);
        
        BOOL didVCAddMethod = class_addMethod(class, originalVCSelector, method_getImplementation(swizzledVCMethod), method_getTypeEncoding(swizzledVCMethod));
        if (didVCAddMethod) {
            class_replaceMethod(class, swizzledVCSelector, method_getImplementation(originalVCMethod), method_getTypeEncoding(originalVCMethod));
        } else {
            method_exchangeImplementations(originalVCMethod, swizzledVCMethod);
        }
        
        /// navigation
        SEL originalSelector = @selector(navigationBar:shouldPopItem:);
        SEL swizzledSelector = @selector(iot_navigationBar:shouldPopItem:);

        Method originalMethod = class_getInstanceMethod(class, originalSelector);
        Method swizzledMethod = class_getInstanceMethod(class, swizzledSelector);

        BOOL didAddMethod = class_addMethod(class, originalSelector, method_getImplementation(swizzledMethod), method_getTypeEncoding(swizzledMethod));
        if (didAddMethod) {
            class_replaceMethod(class, swizzledSelector, method_getImplementation(originalMethod), method_getTypeEncoding(originalMethod));
        } else {
            method_exchangeImplementations(originalMethod, swizzledMethod);
        }
        
    });
    
}

- (void)iot_viewDidLoad {
    [self iot_viewDidLoad];
    
    objc_setAssociatedObject(self, [kOriginalDelegate UTF8String], self.interactivePopGestureRecognizer.delegate, OBJC_ASSOCIATION_ASSIGN);
    self.interactivePopGestureRecognizer.delegate = (id<UIGestureRecognizerDelegate>)self;
    
}

- (BOOL)iot_navigationBar:(UINavigationBar *)navigationBar shouldPopItem:(UINavigationItem *)item {
    UIViewController *vc = self.topViewController;
    if (item != vc.navigationItem) {
        return YES;
    }
    if ([vc conformsToProtocol:@protocol(UINavigationControllerShouldPop)]) {
        if ([(id<UINavigationControllerShouldPop>)vc navigationControllerShouldPop:self]) {
            return [self iot_navigationBar:navigationBar shouldPopItem:item];
        } else {
            return NO;
        }
    } else {
        return [self iot_navigationBar:navigationBar shouldPopItem:item];
    }
}


- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer {
    if (gestureRecognizer == self.interactivePopGestureRecognizer) {
        UIViewController *vc = self.topViewController;
        if ([vc conformsToProtocol:@protocol(UINavigationControllerShouldPop)]) {
            if (![(id<UINavigationControllerShouldPop>)vc navigationControllerShouldStartInteractivePopGestureRecognizer:self]) {
                return NO;
            }
        }
        id<UIGestureRecognizerDelegate> originalDelegate = objc_getAssociatedObject(self, [kOriginalDelegate UTF8String]);
        return [originalDelegate gestureRecognizerShouldBegin:gestureRecognizer];
    }
    return YES;
}

- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldReceiveTouch:(UITouch *)touch {
    if (gestureRecognizer == self.interactivePopGestureRecognizer) {
        id<UIGestureRecognizerDelegate> originalDelegate = objc_getAssociatedObject(self, [kOriginalDelegate UTF8String]);
        return [originalDelegate gestureRecognizer:gestureRecognizer shouldReceiveTouch:touch];
    }
    return YES;
}

- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer {
    if (gestureRecognizer == self.interactivePopGestureRecognizer) {
        id<UIGestureRecognizerDelegate> originalDelegate = objc_getAssociatedObject(self, [kOriginalDelegate UTF8String]);
        return [originalDelegate gestureRecognizer:gestureRecognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:otherGestureRecognizer];
    }
    return YES;
}

@end
