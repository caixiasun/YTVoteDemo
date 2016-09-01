//
//  ProAddtionButton.h
//  MasonryDemo
//
//  Created by Enjoytouch on 16/3/21.
//  Copyright © 2016年 CaixiaSun. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ProAddtionButton : UIButton

// 设定圆角 IBInspectable
@property (nonatomic, assign)IBInspectable CGFloat cornerRadius;
// 边线颜色 IBInspectable
@property (nonatomic, assign)IBInspectable CGFloat bwidth;
// 边线宽度 IBInspectable
@property (nonatomic, assign)IBInspectable UIColor *bcolor;

@end
