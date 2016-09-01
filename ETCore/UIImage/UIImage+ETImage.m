//
//  UIImage+ETImage.m
//  Demo01
//
//  Created by Enjoytouch on 16/1/26.
//  Copyright © 2016年 CaixiaSun. All rights reserved.
//

#import "UIImage+ETImage.h"

@implementation UIImage (ETImage)

+ (UIImage *)imageBundleNamed:(NSString *)fileName
{
    return [self imageBundle:@"images" named:fileName];
}

+ (UIImage *)imageBundle:(NSString *)bundle named:(NSString *)fileName
{
    NSString *path = [[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent:[NSString stringWithFormat:@"%@.bundle",bundle]];
    NSString *imgPath = [path stringByAppendingPathComponent:fileName];
    return [UIImage imageWithContentsOfFile:imgPath];
}

- (UIImage *)getSubImage:(CGRect)rect
{
    CGImageRef subImageRef = CGImageCreateWithImageInRect(self.CGImage, rect);
    CGRect smallBounds = CGRectMake(0, 0, CGImageGetWidth(subImageRef), CGImageGetHeight(subImageRef));
    
    UIGraphicsBeginImageContext(smallBounds.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextDrawImage(context, smallBounds, subImageRef);
    UIImage* smallImage = [UIImage imageWithCGImage:subImageRef];
    UIGraphicsEndImageContext();
    CGImageRelease(subImageRef);
    
    return smallImage;
}

//截图
- (UIImage*)crop:(CGRect)rect
{
    CGPoint origin = CGPointMake(rect.origin.x, rect.origin.y);
    
    UIImage *img = nil;
    
    UIGraphicsBeginImageContext(CGSizeMake(rect.size.width, rect.size.height));
    [self drawAtPoint:origin];
    img = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return img;
}

//改变图片颜色
- (UIImage *)imageThemeChangeWithColor:(UIColor *)color
{
    UIGraphicsBeginImageContextWithOptions(self.size, NO, self.scale);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextTranslateCTM(context, 0, self.size.height);
    CGContextScaleCTM(context, 1.0, -1.0);
    CGContextSetBlendMode(context, kCGBlendModeNormal);
    CGRect rect = CGRectMake(0, 0, self.size.width, self.size.height);
    CGContextClipToMask(context, rect, self.CGImage);
    [color setFill];
    CGContextFillRect(context, rect);
    UIImage*newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return newImage;
}

//合并图层
+(UIImage *)addImage:(UIImage *)image1 toImage:(UIImage *)image2 withRect:(CGRect)rect
{
    UIGraphicsBeginImageContext(image2.size);
    
    //Draw image2
    [image2 drawInRect:CGRectMake(0, 0, image2.size.width, image2.size.height)];
    
    //Draw image1
    [image1 drawInRect:CGRectMake(rect.origin.x, rect.origin.y, rect.size.width, rect.size.height)];
    
    UIImage *resultImage=UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    
    return resultImage;
}

@end
