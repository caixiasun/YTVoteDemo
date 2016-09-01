//
//  ViewController.m
//  YTVoteDemo
//
//  Created by Caixia Sun on 16/8/31.
//  Copyright © 2016年 CaixiaSun. All rights reserved.
//

#import "ViewController.h"
#import "YTVoteModel.h"
#import "YTTableView.h"
#import "YTVoteCell.h"
#import "YTVoteView.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic, strong) NSMutableArray *list;
@property (nonatomic, strong) UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self loadData];
    [self initSubviews];
}

- (NSMutableArray *)list
{
    if (!_list) {
        _list = [NSMutableArray new];
    }
    return _list;
}
//延迟加载数据
- (void)loadData
{
    typeof(self) blockSelf = self;
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.5*NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        NSString *path = [[NSBundle mainBundle] pathForResource:@"abc.plist" ofType:nil];
        NSDictionary *dic = [NSDictionary dictionaryWithContentsOfFile:path];
        blockSelf.list = [YTVoteModel mj_objectArrayWithKeyValuesArray:dic[@"data"][@"list"]];
        [blockSelf.tableView reloadData];
        NSLog(@"list.count = %ld",blockSelf.list.count);
        
    });
}

- (void)initSubviews
{
    YTTableView *tableView = [[YTTableView alloc] initWithFrame:CGRectMake(20, 100, kVoteTableView_max_w, 400) style:UITableViewStylePlain];
    tableView.delegate = self;
    tableView.dataSource = self;
    self.tableView = tableView;
    [self.view addSubview:tableView];
}

#pragma mark - UITableViewDelegate,UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.list.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    YTVoteModel *model = self.list[indexPath.row];
    YTVoteCell *cell = [tableView dequeueReusableCellWithIdentifier:@"VoteCell"];
    if (!cell) {
        cell = [[YTVoteCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"VoteCell"];
    }
    cell.model = model;

    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    YTVoteModel *model = self.list[indexPath.row];
    return model.cellHeight;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [self refreshDataIndexPath:indexPath];
    
    YTVoteModel *model = self.list[indexPath.row];
    YTVoteCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    if (indexPath.row == 0) {
        [cell praiseImgVAnimation];
        return ;
    }
    
    YTVoteView *voteView = [[YTVoteView alloc] initWithFrame:cell.frame voteModel:model];
    voteView.layer.masksToBounds = NO;
    [self.tableView addSubview:voteView];
    self.tableView.userInteractionEnabled = NO;
    
    [UIView animateWithDuration:.5 animations:^{
        voteView.transform = CGAffineTransformMakeScale(1.05, 1.05);
    }completion:^(BOOL finished) {
        [UIView animateWithDuration:.7 animations:^{
            [self.list removeObject:model];
            [self.list insertObject:model atIndex:0];
            [self.tableView moveRowAtIndexPath:indexPath toIndexPath:[NSIndexPath indexPathForRow:0 inSection:0]];
            voteView.centerX = cell.centerX;
            voteView.centerY = cell.centerY;
        } completion:^(BOOL finished) {
            [UIView animateWithDuration:.4 animations:^{
                voteView.transform = CGAffineTransformIdentity;
            } completion:^(BOOL finished) {
                [voteView removeFromSuperview];
                self.tableView.userInteractionEnabled = YES;
            }];
        }];
    }];
    
}

- (void)refreshDataIndexPath:(NSIndexPath *)indexPath
{
    YTVoteModel *model = self.list[indexPath.row];
    [self.list enumerateObjectsUsingBlock:^(YTVoteModel *obj, NSUInteger idx, BOOL * _Nonnull stop)
    {
        if (model.isselected) {//如果当前点击的cell已经是选中的状态，则是取消选中
            obj.isvote = NO;//将所有obj的自己选票状态设置为NO
            if (obj == model) {
                obj.votes = @([obj.votes integerValue]-40);
            }
            obj.totalVotes = @([obj.totalVotes integerValue]-40);//只要是取消选中，所有obj的总票数都要减40
        }
        else
        {
            if (obj.isselected) {//把原来选中的  减 40
                obj.votes = @([obj.votes integerValue] - 40);
            }
            if (obj == model) {//遍历数组，找到当前点击的model，加40
                obj.votes = @([obj.votes integerValue] + 40);
            }
            if (!obj.isvote) {//还没有选过票,将所有obj的总票数加 40
                obj.totalVotes = @([obj.totalVotes integerValue] + 40);
            }
            obj.isvote = YES;
            if (obj != model) {
                obj.isselected = NO;
            }
        }
        
    }];
    
    model.isselected = !model.isselected;
    [self.tableView reloadData];
}

@end
