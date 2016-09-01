//
//  BaseCollectionViewController.m
//  UIViewDemo
//
//  Created by Enjoytouch on 16/2/16.
//  Copyright © 2016年 CaixiaSun. All rights reserved.
//

#import "BaseCollectionViewController.h"
#import "BaseCollectionCell.h"

#define Collection_Cell_Height_Default kFitHeight(100)

@interface BaseCollectionViewController ()<UICollectionViewDataSource,UICollectionViewDelegate>

@end

@implementation BaseCollectionViewController

- (void)loadView
{
    [self createView];

}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.cellName = @"BaseCollectionCell";
    self.sectionTotal = 1;
}

#pragma mark - data source
- (NSMutableArray *)dataSource
{
    if (!_dataSource)
    {
        _dataSource = [NSMutableArray new];
    }
    return _dataSource;
}

#pragma mark - UICollectionViewDataSource/UICollectionViewDelegate
- (UICollectionView *)collectionView
{
    if (!_collectionView)
    {
        UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
        layout.itemSize = CGSizeMake(kScreenWidth, Collection_Cell_Height_Default);
        _collectionView = [[UICollectionView alloc] initWithFrame:CGRectMake(0, 64, kScreenWidth, kScreenHeight-64) collectionViewLayout:layout];
        _collectionView.backgroundColor = ClearColor;
        _collectionView.dataSource = self;
        _collectionView.delegate = self;
    }
    return _collectionView;
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return self.sectionTotal;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return self.dataSource.count;
}
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *ID = @"collectionView";
    BaseCollectionCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:ID forIndexPath:indexPath];
    [cell setContent:[self.dataSource objectSafeAtIndex:indexPath.row]];
    return cell;
}

@end
