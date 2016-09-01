//
//  UIColor+Addtion.m
//  DemoFMDB
//
//  Created by Enjoytouch on 16/2/15.
//  Copyright © 2016年 CaixiaSun. All rights reserved.
//

#import "UIColor+Addtion.h"

@implementation UIColor (Addtion)

+ (UIColor *)colorWithHex:(uint)hex Alpha:(CGFloat)alpha
{
    CGFloat r = ((hex & 0xff0000) >> 16) / 250.0;
    CGFloat g = ((hex & 0xff00) >> 8) / 250.0;
    CGFloat b = (hex & 0xff) / 250.0;
    return [UIColor colorWithRed:r green:g blue:b alpha:alpha];
}

@end
