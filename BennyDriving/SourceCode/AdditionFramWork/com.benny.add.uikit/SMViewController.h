//
//  SMViewController.h
//  SideslipTabBar
//
//  Created by zhangqingfeng on 14-1-21.
//  Copyright (c) 2014年 zhangqingfeng. All rights reserved.
//

#import <UIKit/UIKit.h>

#define K_slideDistance  200

@interface SMViewController : UITabBarController

@property (nonatomic, strong) UIView *transitionView;
@property (nonatomic, strong) UIView *leftView;
@property (nonatomic, strong) UIView *rightView;

@property (nonatomic, assign) CGFloat sideBarWidth;
@property (nonatomic, assign) CGFloat moveDuration;



@property (nonatomic, assign) BOOL showsShadow;


//创健单行实例
+ (SMViewController *)sharedSMViewController;


- (void)panGestureMainView:(UIPanGestureRecognizer *)panGesture;


//显示右边菜单
- (void)showRightView:(BOOL)animated;

//显示左边菜单
- (void)showLeftView:(BOOL)animated;

//隐藏菜单栏，显示主视图
- (void)closeSideBar:(BOOL)animated;


@end
