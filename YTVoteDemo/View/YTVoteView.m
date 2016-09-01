//
//  YTVoteView.m
//  YTVoteDemo
//
//  Created by Caixia Sun on 16/8/31.
//  Copyright © 2016年 CaixiaSun. All rights reserved.
//

#import "YTVoteView.h"
#import "YTPercentBar.h"

@interface YTVoteView()

@property (nonatomic, strong) UILabel *titleLab;
@property (nonatomic, strong) UILabel *percentLab;
@property (nonatomic, strong) UIImageView *praiseImgV;
@property (nonatomic, strong) YTPercentBar *bar;

@end

@implementation YTVoteView

- (instancetype)initWithFrame:(CGRect)frame voteModel:(YTVoteModel *)model
{
    self = [super initWithFrame:frame];
    if (self) {
        
        
        self.layer.cornerRadius = kCornerRadius;
        self.layer.masksToBounds = YES;
        self.backgroundColor = WhiteColor;
        
        self.layer.shadowOffset = CGSizeMake(-2.0, 0.0);
        self.layer.shadowRadius = 5.0;
        self.layer.shadowOpacity = 0.4;
        
        [self initSubviews];
        self.model = model;
        if (model) {//有数据说明是要选中，给大拇指控件动画效果
            [self praiseImgVAnimation];
        }
    }
    return self;
}

- (void)initSubviews
{
    YTPercentBar *bar = [[YTPercentBar alloc] initWithFrame:self.bounds];
    self.bar = bar;
    [self addSubview:bar];
    
    UILabel *titleLab = [UILabel new];
    titleLab.font = [UIFont systemFontOfSize:15];
    titleLab.textColor = BlackColor;
    titleLab.textAlignment = NSTextAlignmentLeft;
    titleLab.numberOfLines = 0;
    self.titleLab = titleLab;
    [self addSubview:titleLab];
    
    UILabel *percentLab = [UILabel new];
    percentLab.numberOfLines = 1;
    percentLab.font = [UIFont systemFontOfSize:13];
    percentLab.textAlignment = NSTextAlignmentRight;
    percentLab.textColor = [UIColor lightGrayColor];
    self.percentLab = percentLab;
    [self addSubview:percentLab];
    
    UIImageView *imgV = [UIImageView new];
    self.praiseImgV = imgV;
    [self addSubview:imgV];
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    self.bar.frame = self.bounds;
    
    self.percentLab.x = kVoteTableView_max_w - kPraiseImgV_w - kPercentLable_w - 60;
    self.percentLab.y = 0;
    self.percentLab.width = kPercentLable_w;
    self.percentLab.height = self.height;
    
    self.praiseImgV.x = kVoteTableView_max_w - kPraiseImgV_w - 45;
    self.praiseImgV.centerY = self.height*.5;
    self.praiseImgV.width = kPraiseImgV_w;
    self.praiseImgV.height = kPraiseImgV_w;
    
    self.titleLab.x = kCellLeftRightInset;
    self.titleLab.y = 0;
    self.titleLab.height = self.height;
    self.titleLab.width = self.width - (kPraiseImgV_w + kPercentLable_w + 50);
}

- (void)setModel:(YTVoteModel *)model
{
    _model = model;
    self.titleLab.text = model.title;
    self.percentLab.text = [NSString stringWithFormat:@"%.f%%",([model.votes floatValue]/[model.totalVotes floatValue]*100)];
    self.percentLab.textColor = model.isselected?kCellBlueColor:[UIColor lightGrayColor];
    
    self.praiseImgV.image = model.isselected?[UIImage imageNamed:@"blue"]:[UIImage imageNamed:@"gray"];
    
    if (model.isvote) {//自己有投票
        self.bar.foregroundColor = model.isselected?kCellBlueColor:kCellLightBlueColor;
        self.bar.percentage = ([model.votes floatValue]/[model.totalVotes floatValue]*100);
    }else{
        [self.bar reset];
    }
}

- (void)praiseImgVAnimation
{
    self.praiseImgV.transform = CGAffineTransformIdentity;
    
    [UIView animateKeyframesWithDuration:.5 delay:0 options:0 animations:^{
        [UIView addKeyframeWithRelativeStartTime:0 relativeDuration:1/3.0 animations:^{
            self.praiseImgV.transform = CGAffineTransformMakeScale(1.5, 1.5);
        }];
        [UIView addKeyframeWithRelativeStartTime:1/3.0 relativeDuration:1/3.0 animations:^{
            self.praiseImgV.transform = CGAffineTransformMakeScale(0.8, 0.8);
        }];
        [UIView addKeyframeWithRelativeStartTime:2/3.0 relativeDuration:1/3.0 animations:^{
            self.praiseImgV.transform = CGAffineTransformMakeScale(1.0, 1.0);
        }];
    } completion:^(BOOL finished) {
        
    }];
}

@end
