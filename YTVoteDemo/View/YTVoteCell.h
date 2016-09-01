//
//  YTVoteCell.h
//  YTVoteDemo
//
//  Created by Caixia Sun on 16/8/31.
//  Copyright © 2016年 CaixiaSun. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "YTVoteModel.h"

@interface YTVoteCell : UITableViewCell

@property (nonatomic, strong) YTVoteModel *model;

- (void)praiseImgVAnimation;

@end
