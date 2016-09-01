//
//  BaseCollectionViewController.h
//  UIViewDemo
//
//  Created by Enjoytouch on 16/2/16.
//  Copyright © 2016年 CaixiaSun. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseCollectionViewController : BaseViewController

@property (nonatomic, strong) UICollectionView    *collectionView;
@property (nonatomic, strong) NSMutableArray      *dataSource;
@property (nonatomic, strong) NSString            *cellName;
@property (nonatomic, assign) NSInteger           sectionTotal;

@end
