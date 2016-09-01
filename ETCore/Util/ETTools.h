//
//  ETTools.h
//  RedStarUser
//
//  Created by Enjoytouch on 15/11/17.
//  Copyright © 2015年 EnjoyTouch. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ETTools : NSObject

///图片旋转
+ (UIImage *)image:(UIImage *)image rotation:(UIImageOrientation)orientation;

///根据文字内容 计算合适的size  更多参数
+ (CGSize)calculatSizeWithContentafteriOS_7:(NSString *)content withOriginWidth:(CGFloat)originWidth withFont:(UIFont *)font;

+ (CGSize)calculatSizeWithContent:(NSString *)content withOriginWidth:(CGFloat)originWidth withFontName:(NSString *)name withFontSize:(CGFloat)size;

//缩放图片
///计算新的宽度
+ (CGFloat)zoomImageWithOriginW:(NSString *)orginW OriginH:(NSString *)orginH  NewH:(CGFloat)newH;
///计算新的高度
+ (CGFloat)zoomImageWithOriginW:(NSString *)orginW OriginH:(NSString *)orginH NewW:(CGFloat)newW;
+ (CGFloat)scaleWithWH:(NSString *)orginW OriginH:(NSString *)orginH;

+ (BOOL)isEmpty:(NSString *)string;

@end
