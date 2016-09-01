//
//  BaseViewController.m
//  Demo01
//
//  Created by Enjoytouch on 16/1/7.
//  Copyright (c) 2016年 CaixiaSun. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()<UIAlertViewDelegate>

@end

@implementation BaseViewController

//basic method
- (void)createView
{
    UIView *baseView = [[UIView alloc] initWithFrame:kScreenBounds];
    baseView.backgroundColor = WhiteColor;
    self.view = baseView;
    
    [self createBlurEffectNavi];
}

- (void)createBlurEffectNavi
{
    [self.navigationController.navigationBar addSubview:[self blurEffect:CGRectMake(0, 0, kScreenWidth, 64)]];
}

- (UIVisualEffectView *)blurEffect:(CGRect)frame
{
    UIBlurEffect *blurEffect = [UIBlurEffect effectWithStyle:UIBlurEffectStyleExtraLight];
    UIVisualEffectView *effectView = [[UIVisualEffectView alloc] initWithEffect:blurEffect];
    effectView.frame = frame;
    return effectView;
}

#pragma mark - 提示文本
- (UIView *)messageView
{
    if (!_messageView)
    {
        _messageView = [ETUtil drawViewInView:self.view Frame:kScreenBounds BackgroundColor:ClearColor];
        UIBlurEffect *blurEffect = [UIBlurEffect effectWithStyle:UIBlurEffectStyleExtraLight];
        UIVisualEffectView *effectView = [[UIVisualEffectView alloc] initWithEffect:blurEffect];
        effectView.frame = _messageView.frame;
        [_messageView addSubview:effectView];
        _messageView.alpha = 0;
        [self.view addSubview:_messageView];
    }
    return _messageView;
}
- (UILabel *)messageLab
{
    if (!_messageLab)
    {
        _messageLab = [ETUtil drawLabelInView:self.messageView Frame:CGRectMake(0, 0, 1, 1) BackgroundColor:MessageBGColor Text:nil TextColor:WhiteColor Font:kFont34Size Alignment:NSTextAlignmentCenter];
        _messageLab.numberOfLines = 0;
        _messageLab.center = self.view.center;
        _messageLab.layer.cornerRadius = kFitWidth(20);
        _messageLab.clipsToBounds = YES;
    }
    return _messageLab;
}

- (void)showMessage:(NSString *)message
{
    if (!message || [ETTools isEmpty:message])
    {
        return;
    }
    self.messageView.alpha = 1;
    CGSize size = [ETTools calculatSizeWithContentafteriOS_7:message withOriginWidth:kScreenWidth*.6 withFont:kFont34Size];
    self.messageLab.height = size.height+kFitHeight(30);
    self.messageLab.width = size.width+kFitWidth(50) > kScreenWidth*.6 ?kScreenWidth*.75:size.width+kFitWidth(50);
    self.messageLab.text = message;
    self.messageLab.center = CGPointMake(kScreenWidth*.5, kScreenHeight*.35);
}
- (void)showMessage:(NSString *)message Duration:(NSTimeInterval)interval
{
    [self showMessage:message];
    [NSTimer scheduledTimerWithTimeInterval:interval target:self selector:@selector(hideMessage) userInfo:nil repeats:NO];
}

- (void)hideMessage
{
    self.messageView.alpha = 0;
}

@end
