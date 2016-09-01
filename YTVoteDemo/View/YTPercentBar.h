//
//  YTPercentBar.h
//  YTVoteDemo
//
//  Created by Caixia Sun on 16/8/31.
//  Copyright © 2016年 CaixiaSun. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface YTPercentBar : UIView

@property (nonatomic, strong) UIColor *foregroundColor;
@property (nonatomic, assign) CGFloat percentage;//百分比

- (void)reset;

@end
