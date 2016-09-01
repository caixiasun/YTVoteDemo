//
//  YTTableView.m
//  YTVoteDemo
//
//  Created by Caixia Sun on 16/8/31.
//  Copyright © 2016年 CaixiaSun. All rights reserved.
//

#import "YTTableView.h"

@implementation YTTableView

- (instancetype)initWithFrame:(CGRect)frame style:(UITableViewStyle)style
{
    self = [super initWithFrame:frame style:style];
    if (self)
    {
        self.bounces = NO;
        self.separatorStyle = UITableViewCellSeparatorStyleNone;
    }
    return self;
}

@end
