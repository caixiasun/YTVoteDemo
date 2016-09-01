//
//  ProAddtionImageView.m
//  MasonryDemo
//
//  Created by Enjoytouch on 16/3/21.
//  Copyright © 2016年 CaixiaSun. All rights reserved.
//

#import "ProAddtionImageView.h"

IB_DESIGNABLE // 添加后可以再XIB中看到改变的图像
@implementation ProAddtionImageView

/**
 *  设定圆角
 */
- (void)setCornerRadius:(CGFloat)cornerRadius
{
    _cornerRadius = cornerRadius;
    self.layer.cornerRadius = _cornerRadius;
    self.layer.masksToBounds = YES;
}

/**
 *  边线颜色
 */
- (void)setBorderColor:(UIColor *)borderColor
{
    _borderColor = borderColor;
    self.layer.borderColor = _borderColor.CGColor;
}

/**
 *  边线宽度
 */
- (void)setBorderWidth:(CGFloat)borderWidth
{
    _borderWidth = borderWidth;
    self.layer.borderWidth = _borderWidth;
}

@end
