//
//  ETUtil.m
//  Demo01
//
//  Created by Enjoytouch on 16/1/26.
//  Copyright © 2016年 CaixiaSun. All rights reserved.
//

#import "ETUtil.h"

@implementation ETUtil

+ (UIView *)drawViewInView:(UIView *)superView Frame:(CGRect)frame BackgroundColor:(UIColor *)color;
{
    UIView *view = [[UIView alloc] initWithFrame:frame];
    view.backgroundColor = color;
    [superView addSubview:view];
    return view;
}

+ (UILabel *)drawLabelInView:(UIView *)superView Frame:(CGRect)frame BackgroundColor:(UIColor *)color
{
    UILabel *lab = [[UILabel alloc] initWithFrame:frame];
    lab.backgroundColor = color;
    [superView addSubview:lab];
    return lab;
}
+ (UILabel *)drawLabelInView:(UIView *)superView Frame:(CGRect)frame BackgroundColor:(UIColor *)color Text:(NSString *)title TextColor:(UIColor *)textColor
{
    UILabel *lab = [self drawLabelInView:superView Frame:frame BackgroundColor:color];
    lab.text = title;
    lab.textColor = textColor;
    return lab;
}
+ (UILabel *)drawLabelInView:(UIView *)superView Frame:(CGRect)frame BackgroundColor:(UIColor *)color Text:(NSString *)title TextColor:(UIColor *)textColor Font:(UIFont *)font
{
    UILabel *lab = [self drawLabelInView:superView Frame:frame BackgroundColor:color Text:title TextColor:textColor];
    lab.font = font;
    return lab;
}

+ (UILabel *)drawLabelInView:(UIView *)superView Frame:(CGRect)frame BackgroundColor:(UIColor *)color Text:(NSString *)title TextColor:(UIColor *)textColor Font:(UIFont *)font Alignment:(NSTextAlignment)alignment
{
    UILabel *lab = [self drawLabelInView:superView Frame:frame BackgroundColor:color Text:title TextColor:textColor Font:font];
    lab.textAlignment = alignment;
    return lab;
}

+ (UIImageView *)drawImageViewInView:(UIView *)superView Frame:(CGRect)frame Img:(NSString *)imageName
{
    UIImageView *img = [[UIImageView alloc] initWithFrame:frame];
    img.image = [UIImage imageNamed:imageName];
    [superView addSubview:img];
    return img;
}

+ (UIImageView *)drawImageViewInView:(UIView *)superView Frame:(CGRect)frame ImgBundleName:(NSString *)imgName
{
    UIImageView *img = [[UIImageView alloc] initWithFrame:frame];
    img.image = [UIImage imageBundleNamed:imgName];
    [superView addSubview:img];
    
    return img;
}

+ (UIButton *)drawButtonInView:(UIView *)superView Frame:(CGRect)frame
{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = frame;
    [superView addSubview:btn];
    return btn;
}

+ (UIButton *)drawButtonInView:(UIView *)superView Frame:(CGRect)frame BackgroundColor:(UIColor *)bgColor
{
    UIButton *btn = [self drawButtonInView:superView Frame:frame];
    btn.backgroundColor = bgColor;
    return btn;
}
+ (UIButton *)drawButtonInView:(UIView *)superView Frame:(CGRect)frame Title:(NSString *)title TitleColor:(UIColor *)titleColor
{
    UIButton *btn = [self drawButtonInView:superView Frame:frame];
    [btn setTitle:title forState:UIControlStateNormal];
    [btn setTitleColor:titleColor forState:UIControlStateNormal];
    return btn;
}
+ (UIButton *)drawButtonInView:(UIView *)superView Frame:(CGRect)frame BackgroundColor:(UIColor *)bgColor Title:(NSString *)title TitleColor:(UIColor *)titleColor
{
    UIButton *btn = [self drawButtonInView:superView Frame:frame Title:title TitleColor:titleColor];
    btn.backgroundColor = bgColor;
    return btn;
}
+ (UIButton *)drawButtonInView:(UIView *)superView Frame:(CGRect)frame BackgroundColor:(UIColor *)bgColor Target:(id)target Action:(SEL)selector
{
    UIButton *btn = [self drawButtonInView:superView Frame:frame BackgroundColor:bgColor];
    [btn addTarget:target action:selector forControlEvents:UIControlEventTouchUpInside];
    return btn;
}
+ (UIButton *)drawButtonInView:(UIView *)superView Frame:(CGRect)frame BackgroundColor:(UIColor *)bgColor Tag:(NSInteger)tag Target:(id)target Action:(SEL)selector
{
    UIButton *btn = [self drawButtonInView:superView Frame:frame BackgroundColor:bgColor Target:target Action:selector];
    btn.tag = tag;
    return btn;
}
+ (UIButton *)drawButtonInView:(UIView *)superView Frame:(CGRect)frame BackgroundColor:(UIColor *)bgColor  Title:(NSString *)title TitleColor:(UIColor *)titleColor Target:(id)target Action:(SEL)selector
{
    UIButton *btn = [self drawButtonInView:superView Frame:frame BackgroundColor:bgColor Title:title TitleColor:titleColor];
    [btn addTarget:target action:selector forControlEvents:UIControlEventTouchUpInside];
    return btn;
}
+ (UIButton *)drawButtonInView:(UIView *)superView Frame:(CGRect)frame BackgroundColor:(UIColor *)bgColor Tag:(NSInteger)tag  Title:(NSString *)title TitleColor:(UIColor *)titleColor Target:(id)target Action:(SEL)selector
{
    UIButton *btn = [self drawButtonInView:superView Frame:frame BackgroundColor:bgColor Title:title TitleColor:titleColor Target:target Action:selector];
    btn.tag = tag;
    return btn;
}
+ (UIButton *)drawButtonInView:(UIView *)superView Frame:(CGRect)frame BackgroundColor:(UIColor *)bgColor  Title:(NSString *)title TitleColor:(UIColor *)titleColor Tag:(NSInteger)tag Target:(id)target Action:(SEL)selector
{
    UIButton *btn = [self drawButtonInView:superView Frame:frame BackgroundColor:bgColor Title:title TitleColor:titleColor Target:target Action:selector];
    btn.tag = tag;
    return btn;
}
+ (UIButton *)drawButtonInView:(UIView *)superView Frame:(CGRect)frame Image:(UIImage *)image  Target:(id)target Action:(SEL)selector
{
    UIButton *btn = [self drawButtonInView:superView Frame:frame];
    [btn setImage:image forState:UIControlStateNormal];
    [btn addTarget:target action:selector forControlEvents:UIControlEventTouchUpInside];
    return btn;
}

+ (UIButton *)drawButtonInView:(UIView *)superView Frame:(CGRect)frame Image:(UIImage *)image Tag:(NSInteger)tag Target:(id)target Action:(SEL)selector
{
    UIButton *btn = [self drawButtonInView:superView Frame:frame Image:image Target:target Action:selector];
    btn.tag = tag;
    return btn;
}

@end
