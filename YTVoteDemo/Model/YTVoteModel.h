//
//  YTVoteModel.h
//  YTVoteDemo
//
//  Created by Caixia Sun on 16/8/31.
//  Copyright © 2016年 CaixiaSun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface YTVoteModel : NSObject

/**是否自己已经选择*/
@property (nonatomic, assign) BOOL isselected;

/**是否自己已经投票*/
@property (nonatomic, assign) BOOL isvote;

/**投票数量*/
@property (nonatomic, strong) NSNumber *votes;

/**总投票数量*/
@property (nonatomic, strong) NSNumber *totalVotes;

/**投票标题*/
@property (nonatomic, strong) NSString *title;

/**投票cell的高度*/
@property (nonatomic, assign) CGFloat cellHeight;

@end
