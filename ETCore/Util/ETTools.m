//
//  ETTools.m
//  RedStarUser
//
//  Created by Enjoytouch on 15/11/17.
//  Copyright © 2015年 EnjoyTouch. All rights reserved.
//

#import "ETTools.h"

@implementation ETTools

///图片旋转
+ (UIImage *)image:(UIImage *)image rotation:(UIImageOrientation)orientation
{
    long double rotate = 0.0;
    CGRect rect;
    float translateX = 0;
    float translateY = 0;
    float scaleX = 1.0;
    float scaleY = 1.0;
    
    switch (orientation) {
        case UIImageOrientationLeft:
            rotate = M_PI_2;
            rect = CGRectMake(0, 0, image.size.height, image.size.width);
            translateX = 0;
            translateY = -rect.size.width;
            scaleY = rect.size.width/rect.size.height;
            scaleX = rect.size.height/rect.size.width;
            break;
        case UIImageOrientationRight:
            rotate = 3 * M_PI_2;
            rect = CGRectMake(0, 0, image.size.height, image.size.width);
            translateX = -rect.size.height;
            translateY = 0;
            scaleY = rect.size.width/rect.size.height;
            scaleX = rect.size.height/rect.size.width;
            break;
        case UIImageOrientationDown:
            rotate = M_PI;
            rect = CGRectMake(0, 0, image.size.width, image.size.height);
            translateX = -rect.size.width;
            translateY = -rect.size.height;
            break;
        default:
            rotate = 0.0;
            rect = CGRectMake(0, 0, image.size.width, image.size.height);
            translateX = 0;
            translateY = 0;
            break;
    }
    
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    //做CTM变换
    CGContextTranslateCTM(context, 0.0, rect.size.height);
    CGContextScaleCTM(context, 1.0, -1.0);
    CGContextRotateCTM(context, rotate);
    CGContextTranslateCTM(context, translateX, translateY);
    
    CGContextScaleCTM(context, scaleX, scaleY);
    //绘制图片
    CGContextDrawImage(context, CGRectMake(0, 0, rect.size.width, rect.size.height), image.CGImage);
    
    UIImage *newPic = UIGraphicsGetImageFromCurrentImageContext();
    
    return newPic;
}

///根据文字内容 计算合适的size  更多参数
+ (CGSize)calculatSizeWithContentafteriOS_7:(NSString *)content withOriginWidth:(CGFloat)originWidth withFont:(UIFont *)font
{
    CGSize size = [content boundingRectWithSize:CGSizeMake(originWidth,MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:font}context:nil].size;
    return size;
    
}

+ (CGSize)calculatSizeWithContent:(NSString *)content withOriginWidth:(CGFloat)originWidth withFontName:(NSString *)name withFontSize:(CGFloat)size
{
    UIFont *font = nil;
    if (name)
    {
        font = [UIFont fontWithName:name size:size];
    }
    else
    {
        font = [UIFont systemFontOfSize:size];
    }
    
    CGSize fontSize = [content boundingRectWithSize:CGSizeMake(originWidth,MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:font}context:nil].size;
    
    return fontSize;
}

+ (CGFloat)zoomImageWithOriginW:(NSString *)orginW OriginH:(NSString *)orginH  NewH:(CGFloat)newH
{
    CGFloat newW = newH * [self scaleWithWH:orginW OriginH:orginH];
    return newW;
}

+ (CGFloat)zoomImageWithOriginW:(NSString *)orginW OriginH:(NSString *)orginH NewW:(CGFloat)newW
{
    CGFloat newH = newW / [self scaleWithWH:orginW OriginH:orginH];
    return newH;
}

+ (CGFloat)scaleWithWH:(NSString *)orginW OriginH:(NSString *)orginH
{
    CGFloat scale = [orginW floatValue] / [orginH floatValue];
    return scale;
}

+ (BOOL)isEmpty:(NSString *)string
{
    if (string == nil || string.length == 0)
    {
        return YES;
    }
    return NO;
}

@end
