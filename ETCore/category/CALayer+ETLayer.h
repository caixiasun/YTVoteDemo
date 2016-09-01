//
//  CALayer+ETLayer.h
//  CoreAnimDemo01
//
//  Created by Enjoytouch on 16/3/17.
//  Copyright © 2016年 CaixiaSun. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>

@interface CALayer (ETLayer)

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



@end
