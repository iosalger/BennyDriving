//
//  SMViewController.m
//  SideslipTabBar
//
//  Created by zhangqingfeng on 14-1-21.
//  Copyright (c) 2014年 zhangqingfeng. All rights reserved.
//

#import "SMViewController.h"

@interface SMViewController ()
<UIGestureRecognizerDelegate>
{
    UITapGestureRecognizer *_tapGestureRec;
    UIPanGestureRecognizer *_panGestureRec;
}

@end

@implementation SMViewController


#pragma mark-
#pragma mark-创健单行实例
+ (SMViewController *)sharedSMViewController
{
    static SMViewController *sharedSMViewController;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedSMViewController = [[self alloc] init];
    });
    
    return sharedSMViewController;
}

- (void)setLeftView:(UIView *)leftView{
    
    if (_leftView) {
        [_leftView removeFromSuperview];
        _leftView = nil;
    }
    _leftView = leftView;
    
    _leftView.frame = self.view.bounds;
    [self.view insertSubview:_leftView atIndex:0];
}


- (void)setRightView:(UIView *)rightView{
    
    if (_rightView) {
        [_rightView removeFromSuperview];
        _rightView = nil;
    }
    
    _rightView = rightView;
    
    _rightView.frame = self.view.bounds;
    [self.view insertSubview:_rightView atIndex:0];
}


- (void)setShowsShadow:(BOOL)showsShadow{
    _showsShadow = showsShadow;
    
    if(_showsShadow){
        _transitionView.layer.masksToBounds = NO;
        _transitionView.layer.shadowRadius = 5;
        _transitionView.layer.shadowOpacity = 0.8;
        _transitionView.layer.shadowPath = [[UIBezierPath bezierPathWithRect:_transitionView.bounds] CGPath];
    }
    else {
        _transitionView.layer.shadowPath = [UIBezierPath bezierPathWithRect:CGRectNull].CGPath;
    }
}




#pragma mark-
#pragma mark-显示和隐藏菜单
//显示右菜单
- (void)showRightView:(BOOL)animated{
    //判断是否有右菜单，没有就不显示，
    if (_rightView == nil) {
        return;
    }
    
    [self.view sendSubviewToBack:_leftView];
    
    CGFloat siderWidth = _sideBarWidth == 0 ? (self.view.frame.size.width * 3 / 4) : _sideBarWidth;
    
    CGFloat x = _transitionView.frame.size.width / 2 - siderWidth;
    
    if (animated) {
        [UIView animateWithDuration:_moveDuration
                         animations:^{
                             _transitionView.center = CGPointMake(x, _transitionView.center.y);
                         }
                         completion:^(BOOL finished) {
                             _tapGestureRec.enabled = YES;
                             
                             ((UIView *)_transitionView.subviews[0]).userInteractionEnabled = NO;

                         }];
    }
    else{
        _transitionView.center = CGPointMake(x, _transitionView.center.y);
        _tapGestureRec.enabled = YES;
    }
    
    
    
}

//显示左菜单
- (void)showLeftView:(BOOL)animated{
    //判断是否有左菜单，没有就不显示，
    if (_leftView == nil) {
        return;
    }
    
    [self.view sendSubviewToBack:_rightView];
    
    CGFloat siderWidth = _sideBarWidth == 0 ? (self.view.frame.size.width * 3 / 4) : _sideBarWidth;
    
    CGFloat x = _transitionView.frame.size.width / 2 + siderWidth;
    
    if (animated) {
        [UIView animateWithDuration:_moveDuration
                         animations:^{
                             _transitionView.center = CGPointMake(x, _transitionView.center.y);
                             
                             NSLog(@"x=%f, Y=%f",_transitionView.center.x, _transitionView.center.y);
                         }
                         completion:^(BOOL finished) {
                             _tapGestureRec.enabled = YES;
                             
                             ((UIView *)_transitionView.subviews[0]).userInteractionEnabled = NO;
                         }];
    }
    else{
        _transitionView.center = CGPointMake(x, _transitionView.center.y);
        _tapGestureRec.enabled = YES;
    }
}

//显示主视图
- (void)closeSideBar:(BOOL)animated
{
    if (animated) {
        [UIView animateWithDuration:_moveDuration
                         animations:^{
                             _transitionView.center = self.view.center;
                         }
                         completion:^(BOOL finished) {
                             _tapGestureRec.enabled = NO;
                             
                             ((UIView *)_transitionView.subviews[0]).userInteractionEnabled = YES;

                         }];
    }
    else{
        _transitionView.center = self.view.center;
        _tapGestureRec.enabled = NO;
    }
}



- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        
        self.moveDuration = 0.3;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    for (UIView *view_ in self.view.subviews) {
        if ([view_ isKindOfClass:[UITabBar class]]) {
            [view_ removeFromSuperview];
        }
        else{
            _transitionView = view_;
            self.transitionView.frame = self.view.bounds;
            self.transitionView.backgroundColor = [UIColor redColor];
        }
    }
    
    if(_showsShadow){
        _transitionView.layer.masksToBounds = NO;
        _transitionView.layer.shadowRadius = 5;
        _transitionView.layer.shadowOpacity = 0.8;
        _transitionView.layer.shadowPath = [[UIBezierPath bezierPathWithRect:_transitionView.bounds] CGPath];
    }
    else {
        _transitionView.layer.shadowPath = [UIBezierPath bezierPathWithRect:CGRectNull].CGPath;
    }


    
    _tapGestureRec = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapGesture)];
    _tapGestureRec.delegate = self;
    [_transitionView addGestureRecognizer:_tapGestureRec];
    _tapGestureRec.enabled = NO;
    
    _panGestureRec = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(panGestureMainView:)];
    _panGestureRec.delegate = self;
    [_transitionView addGestureRecognizer:_panGestureRec];
}


#pragma mark-
#pragma mark-多手势事件
- (void)tapGesture{
    
    [self closeSideBar:YES];
}

- (void)panGestureMainView:(UIPanGestureRecognizer *)panGesture
{
    CGPoint translation = [panGesture translationInView:self.view];
    
    static CGFloat viewBegCenterX;
    static CGFloat viewX;
    
    if (panGesture.state == UIGestureRecognizerStateBegan){
        //开始拖动
        viewBegCenterX = _transitionView.center.x;
        viewX = _transitionView.frame.origin.x;
    }
    else if (panGesture.state == UIGestureRecognizerStateChanged){
        //正在拖动
        CGFloat moveDistance = translation.x + viewBegCenterX;
        
        if (translation.x > 0)
        {
            //向右拖动
            if (_leftView == nil && _transitionView.frame.origin.x >= 0) {
                return;
            }
            
            if (_transitionView.frame.origin.x > 0) {
                if (_leftView.hidden == YES) {
                    _leftView.hidden = NO;
                }
                
                if (_rightView && _rightView.hidden == NO) {
                    _rightView.hidden = YES;
                }
            }
            _transitionView.center = CGPointMake(moveDistance, _transitionView.center.y);
            
        }
        else if(translation.x < 0){
            //向左拖动
            if (_rightView == nil && _transitionView.frame.origin.x <= 0) {
                return;
            }
            
            if (_transitionView.frame.origin.x < 0) {
                if (_rightView.hidden == YES) {
                    _rightView.hidden = NO;
                }
                if (_leftView && _leftView.hidden == NO) {
                    _leftView.hidden = YES;
                }
            }
            _transitionView.center = CGPointMake(moveDistance, _transitionView.center.y);
        }
    }
    else if (panGesture.state == UIGestureRecognizerStateEnded){
        
        //拖动结束
        CGFloat siderWidth = _sideBarWidth == 0 ? (self.view.frame.size.width * 3 / 4) : _sideBarWidth;
        
        CGPoint velocity = [panGesture velocityInView:_transitionView];
        
        if (velocity.x > K_slideDistance && viewX == 0) {
            [self showLeftView:YES];
        }
        else if (velocity.x > K_slideDistance && viewX < 0){
            [self closeSideBar:YES];
        }
        else if (velocity.x < -K_slideDistance && viewX == 0){
            [self showRightView:YES];
        }
        else if (velocity.x < -K_slideDistance && viewX > 0){
            [self closeSideBar:YES];
        }
        else if (_transitionView.frame.origin.x > siderWidth / 2 && viewX == 0) {
            
            [self showLeftView:YES];
        }
        else if (_transitionView.frame.origin.x < -(siderWidth / 2 && viewX == 0)){
            
            [self showRightView:YES];
        }
        else {
            
            [self closeSideBar:YES];
        }
    }
}

#pragma mark-UIGestureRecognizer代理方法
- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer {
    
    if ([gestureRecognizer isKindOfClass:[UIPanGestureRecognizer class]]) {
        CGPoint velocity = [(UIPanGestureRecognizer *)gestureRecognizer velocityInView:_transitionView];
        
        if ([self.selectedViewController isKindOfClass:[UINavigationController class]]) {
            __weak UINavigationController *nav = (UINavigationController *)self.selectedViewController;
            
            if (nav.viewControllers.count > 1) {
                if (velocity.x > K_slideDistance) {
                    [nav popToViewController:nav.viewControllers[nav.viewControllers.count - 2] animated:YES];
                }
                return NO;
            }
        }
        
        if ([self.selectedViewController isKindOfClass:[UITabBarController class]]) {
            __weak UITabBarController *tabBarViewCOntroller = (UITabBarController *)self.selectedViewController;
            
            if ([tabBarViewCOntroller.selectedViewController isKindOfClass:[UINavigationController class]]) {
                __weak UINavigationController *nav = (UINavigationController *)tabBarViewCOntroller.selectedViewController;
                
                if (nav.viewControllers.count > 1) {
                    if (velocity.x > K_slideDistance) {
                        [nav popToViewController:nav.viewControllers[nav.viewControllers.count - 2] animated:YES];
                    }
                    return NO;
                }
            }
        }
    }
    
    return YES;
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
