//
//  YTVoteModel.m
//  YTVoteDemo
//
//  Created by Caixia Sun on 16/8/31.
//  Copyright © 2016年 CaixiaSun. All rights reserved.
//

#import "YTVoteModel.h"

@implementation YTVoteModel

//该方法在使用MJExtention时自动调用
- (void)setTitle:(NSString *)title
{
    _title = title;
    //根据内容计算cell高度
    CGFloat height = [title boundingRectWithSize:CGSizeMake(kVoteTableView_max_w-kPraiseImgV_w-kPercentLable_w-85, 100) options:NSStringDrawingUsesLineFragmentOrigin
                                                                                                                                 | NSStringDrawingUsesFontLeading attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:15]} context:nil].size.height;
    self.cellHeight = height + 30;
}

@end
