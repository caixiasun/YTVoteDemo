//
//  ETFrame.h
//  Demo01
//
//  Created by Enjoytouch on 16/1/7.
//  Copyright (c) 2016年 CaixiaSun. All rights reserved.
//

#ifndef Demo01_ETFrame_h
#define Demo01_ETFrame_h

#define kScreenBounds [UIScreen mainScreen].bounds
#define kScreenWidth [UIScreen mainScreen].bounds.size.width
#define kScreenHeight [UIScreen mainScreen].bounds.size.height
#define kFit2Height(value) kScreenHeight/1334*value
#define kFit2Width(value) kScreenWidth/750*value

#define kFitHeight(value) kScreenHeight/667*value
#define kFitWidth(value) kScreenWidth/375*value

#define BorderHeight 1


#endif
