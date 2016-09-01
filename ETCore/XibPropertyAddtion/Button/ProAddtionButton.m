//
//  ProAddtionButton.m
//  MasonryDemo
//
//  Created by Enjoytouch on 16/3/21.
//  Copyright © 2016年 CaixiaSun. All rights reserved.
//

#import "ProAddtionButton.h"

IB_DESIGNABLE // 添加后可以再XIB中看到改变的图像
@implementation ProAddtionButton

/**
 *  设定圆角
 */
- (void)setCornerRadius:(CGFloat)cornerRadius{
    _cornerRadius = cornerRadius;
    self.layer.cornerRadius  = _cornerRadius;
    self.layer.masksToBounds = YES;
}

/**
 *  边线颜色
 */
- (void)setBcolor:(UIColor *)bcolor{
    _bcolor = bcolor;
    self.layer.borderColor = _bcolor.CGColor;
}

/**
 *  边线宽度
 */
- (void)setBwidth:(CGFloat)bwidth {
    _bwidth = bwidth;
    self.layer.borderWidth = _bwidth;
}

@end
