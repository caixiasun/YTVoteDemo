//
//  ETUtil.h
//  Demo01
//
//  Created by Enjoytouch on 16/1/26.
//  Copyright © 2016年 CaixiaSun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ETUtil : NSObject
///view
+ (UIView *)drawViewInView:(UIView *)superView Frame:(CGRect)frame BackgroundColor:(UIColor *)color;

+ (UILabel *)drawLabelInView:(UIView *)superView Frame:(CGRect)frame BackgroundColor:(UIColor *)color;
+ (UILabel *)drawLabelInView:(UIView *)superView Frame:(CGRect)frame BackgroundColor:(UIColor *)color Text:(NSString *)title TextColor:(UIColor *)textColor;
+ (UILabel *)drawLabelInView:(UIView *)superView Frame:(CGRect)frame BackgroundColor:(UIColor *)color Text:(NSString *)title TextColor:(UIColor *)textColor Font:(UIFont *)font;
+ (UILabel *)drawLabelInView:(UIView *)superView Frame:(CGRect)frame BackgroundColor:(UIColor *)color Text:(NSString *)title TextColor:(UIColor *)textColor Font:(UIFont *)font Alignment:(NSTextAlignment)alignment;

+ (UIImageView *)drawImageViewInView:(UIView *)superView Frame:(CGRect)frame Img:(NSString *)imageName;
+ (UIImageView *)drawImageViewInView:(UIView *)superView Frame:(CGRect)frame ImgBundleName:(NSString *)imgName;

+ (UIButton *)drawButtonInView:(UIView *)superView Frame:(CGRect)frame;
+ (UIButton *)drawButtonInView:(UIView *)superView Frame:(CGRect)frame BackgroundColor:(UIColor *)bgColor;
+ (UIButton *)drawButtonInView:(UIView *)superView Frame:(CGRect)frame Title:(NSString *)title TitleColor:(UIColor *)titleColor;
+ (UIButton *)drawButtonInView:(UIView *)superView Frame:(CGRect)frame BackgroundColor:(UIColor *)bgColor Title:(NSString *)title TitleColor:(UIColor *)titleColor;
+ (UIButton *)drawButtonInView:(UIView *)superView Frame:(CGRect)frame BackgroundColor:(UIColor *)bgColor Target:(id)target Action:(SEL)selector;
+ (UIButton *)drawButtonInView:(UIView *)superView Frame:(CGRect)frame BackgroundColor:(UIColor *)bgColor Tag:(NSInteger)tag Target:(id)target Action:(SEL)selector;
+ (UIButton *)drawButtonInView:(UIView *)superView Frame:(CGRect)frame BackgroundColor:(UIColor *)bgColor  Title:(NSString *)title TitleColor:(UIColor *)titleColor Tag:(NSInteger)tag Target:(id)target Action:(SEL)selector;
+ (UIButton *)drawButtonInView:(UIView *)superView Frame:(CGRect)frame BackgroundColor:(UIColor *)bgColor Tag:(NSInteger)tag  Title:(NSString *)title TitleColor:(UIColor *)titleColor Target:(id)target Action:(SEL)selector;
+ (UIButton *)drawButtonInView:(UIView *)superView Frame:(CGRect)frame Image:(UIImage *)image  Target:(id)target Action:(SEL)selector;
+ (UIButton *)drawButtonInView:(UIView *)superView Frame:(CGRect)frame Image:(UIImage *)image Tag:(NSInteger)tag Target:(id)target Action:(SEL)selector;

@end
