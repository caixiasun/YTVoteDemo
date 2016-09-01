//
//  UIView+ETView.h
//  Demo01
//
//  Created by Enjoytouch on 16/1/26.
//  Copyright © 2016年 CaixiaSun. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (ETView)

- (CGFloat)x;
- (void)setX:(CGFloat)x;

- (CGFloat)y;
- (void)setY:(CGFloat)y;

- (CGFloat)centerX;
- (void)setCenterX:(CGFloat)centerX;

- (CGFloat)centerY;
- (void)setCenterY:(CGFloat)centerY;

- (CGFloat)top;
- (void)setTop:(CGFloat)top;

- (CGFloat)bottom;
- (void)setBottom:(CGFloat)bottom;

- (CGFloat)left;
- (void)setLeft:(CGFloat)left;

- (CGFloat)right;
- (void)setRight:(CGFloat)right;

- (CGFloat)width;
- (void)setWidth:(CGFloat)width;

- (CGFloat)height;
- (void)setHeight:(CGFloat)height;

- (CGSize)size;
- (void)setSize:(CGSize)size;

- (CGPoint)origin;
- (void)setOrigin:(CGPoint)origin;

- (void)FrameX:(float)x Y:(float)y Width:(float)width Height:(float)height;


@end
