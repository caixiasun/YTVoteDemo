//
//  UIImage+ETImage.h
//  Demo01
//
//  Created by Enjoytouch on 16/1/26.
//  Copyright © 2016年 CaixiaSun. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (ETImage)

+ (UIImage *)imageBundleNamed:(NSString *)fileName;
+ (UIImage *)imageBundle:(NSString *)bundle named:(NSString *)fileName;

/*
 * 按照Rect截取Image里一块生成新的image
 */
- (UIImage *)getSubImage:(CGRect)rect;
- (UIImage*)crop:(CGRect)rect;
- (UIImage *)imageThemeChangeWithColor:(UIColor *)color;

+(UIImage *)addImage:(UIImage *)image1 toImage:(UIImage *)image2 withRect:(CGRect)rect;

@end
