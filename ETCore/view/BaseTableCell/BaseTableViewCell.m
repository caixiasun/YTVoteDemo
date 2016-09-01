//
//  BaseTableViewCell.m
//  TabviewDemo
//
//  Created by Enjoytouch on 16/2/16.
//  Copyright © 2016年 CaixiaSun. All rights reserved.
//

#import "BaseTableViewCell.h"

@implementation BaseTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self)
    {
        self.backgroundColor = ClearColor;
    }
    return self;
}

- (void)setContent:(id)data
{
    
}

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
