//
//  ProAddtionImageView.h
//  MasonryDemo
//
//  Created by Enjoytouch on 16/3/21.
//  Copyright © 2016年 CaixiaSun. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ProAddtionImageView : UIImageView

// 设定圆角
@property (nonatomic, assign) IBInspectable CGFloat cornerRadius;
// 边线颜色
@property (nonatomic, assign) IBInspectable UIColor *borderColor;
// 边线宽度
@property (nonatomic, assign) IBInspectable CGFloat borderWidth;

@end
