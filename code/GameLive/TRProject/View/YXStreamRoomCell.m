//
//  YXStreamRoomCell.m
//  TRProject
//
//  Created by 王耀先 on 16/6/26.
//  Copyright © 2016年 Tarena. All rights reserved.
//

#import "YXStreamRoomCell.h"

@implementation YXStreamRoomCell
//@property(nonatomic) UIImageView *coverIV;
//@property(nonatomic) UIView *bottomView;
//@property(nonatomic) UIImageView *iconIV;
//@property(nonatomic) UILabel *nameLabel;
//@property(nonatomic) UILabel *titleLabel;


- (UIImageView *)coverIV{
    if (!_coverIV) {
        _coverIV = [UIImageView new];
        [self.contentView addSubview:_coverIV];
        [_coverIV mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.right.left.equalTo(0);
            make.height.equalTo(120);
        }];
    }
    return _coverIV;
}

-(UILabel *)spectater{
    if (!_spectater) {
        _spectater = [UILabel new];
        [self.coverIV addSubview:_spectater];
        [_spectater mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(3);
            make.bottom.equalTo(-3);
        }];
        _spectater.font = [UIFont systemFontOfSize:12];
        _spectater.backgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.22];
    }
    return _spectater;
}
//3 2
-(UIImageView *)iconIV{
    if (!_iconIV) {
        _iconIV = [UIImageView new];
        [self.contentView addSubview: _iconIV];
        [_iconIV mas_makeConstraints:^(MASConstraintMaker *make) {
            make.height.equalTo(35);
            make.width.equalTo(35);
            make.left.equalTo(3);
            make.top.equalTo(self.coverIV.mas_bottom).equalTo(3);
        }];
        _iconIV.clipsToBounds = YES;
        _iconIV.layer.cornerRadius = 20;
    }
    return _iconIV;
}

-(UILabel *)nameLabel{
    if (!_nameLabel) {
        _nameLabel = [UILabel new];
        [self.contentView addSubview:_nameLabel];
        [_nameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.coverIV.mas_bottom).equalTo(3);
            make.left.equalTo(self.iconIV.mas_right).equalTo(3);
        }];
        _titleLabel.font = [UIFont systemFontOfSize:14];
    }
    return _nameLabel;
}
-(UILabel *)titleLabel{
    if (!_titleLabel) {
        _titleLabel = [UILabel new];
        [self.contentView addSubview:_titleLabel];
        [_titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.nameLabel.mas_bottom).equalTo(3);
            make.left.equalTo(self.iconIV.mas_right).equalTo(3);
            make.right.equalTo(0);
        }];
        _titleLabel.font = [UIFont systemFontOfSize:12];
    }
    return _titleLabel;
}



@end
