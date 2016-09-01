//
//  YTVoteCell.m
//  YTVoteDemo
//
//  Created by Caixia Sun on 16/8/31.
//  Copyright © 2016年 CaixiaSun. All rights reserved.
//

#import "YTVoteCell.h"
#import "YTVoteView.h"

@interface YTVoteCell()

@property (nonatomic, strong) YTVoteView *voteView;

@end

@implementation YTVoteCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self)
    {
        self.selectionStyle = UITableViewCellSeparatorStyleNone;
        self.backgroundColor = WhiteColor;
        self.layer.cornerRadius = kCornerRadius;
        self.layer.masksToBounds = YES;
        self.layer.borderWidth = .8;
        self.layer.borderColor = [UIColor lightGrayColor].CGColor;
        
        [self initSubviews];
    }
    return self;
}

- (void)initSubviews
{
    YTVoteView *view = [[YTVoteView alloc] initWithFrame:self.bounds voteModel:nil];
    self.voteView = view;
    [self addSubview:view];
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    self.voteView.frame = self.bounds;
}

- (void)setModel:(YTVoteModel *)model
{
    _model = model;
    self.voteView.model = model;
}

- (void)setFrame:(CGRect)frame
{
    
    if (frame.size.width == kVoteTableView_max_w) {
        frame = UIEdgeInsetsInsetRect(frame, UIEdgeInsetsMake(kCellTopBottomInset, kCellLeftRightInset, kCellTopBottomInset, kCellLeftRightInset));
    }else
    {
        frame.origin.x += kCellLeftRightInset;
    }
    
    [super setFrame:frame];
}

- (void)praiseImgVAnimation
{
    [self.voteView praiseImgVAnimation];
}

@end
