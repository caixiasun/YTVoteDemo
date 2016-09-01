//
//  BaseViewController.h
//  Demo01
//
//  Created by Enjoytouch on 16/1/7.
//  Copyright (c) 2016年 CaixiaSun. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseViewController : UIViewController

@property (nonatomic, strong) UILabel *messageLab;
@property (nonatomic, strong) UIView  *messageView;

//basic method
- (void)createView;
- (void)createBlurEffectNavi;

/*
 *  毛玻璃效果
 */
- (UIVisualEffectView *)blurEffect:(CGRect)frame;

///message
- (void)showMessage:(NSString *)message;
- (void)showMessage:(NSString *)message Duration:(NSTimeInterval)interval;
- (void)hideMessage;

@end

