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
            make.bottom.equalTo(_coverIV.mas_top);
        }];
    }
    return _coverIV;
}

-(UILabel *)spectater{
    if (!_spectater) {
        _spectater = [UILabel new];
        [_iconIV addSubview:_spectater];
        [_spectater mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.bottom.equalTo(3);
        }];
        _spectater.font = [UIFont systemFontOfSize:12];
        _spectater.backgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.22];
    }
    return _spectater;
}
//3 2
-(UIImageView *)iconIV{
    if (!_coverIV) {
        _iconIV = [UIImageView new];
        [self.contentView addSubview: _coverIV];
        [_iconIV mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.bottom.equalTo(3);
        }];
    }
    return _iconIV;
}

-(UILabel *)nameLabel{
    if (!_nameLabel) {
        _nameLabel = [UILabel new];
        [self.contentView addSubview:_nameLabel];
        [_nameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(_iconIV.mas_right);
            make.bottom.equalTo(_titleLabel.mas_top);
            make.right.equalTo(0);
            make.height.equalTo(3);
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
            make.left.equalTo(_iconIV.mas_right);
            make.bottom.right.equalTo(0);
            make.height.equalTo(2);
        }];
        _titleLabel.font = [UIFont systemFontOfSize:12];
    }
    return _titleLabel;
}



@end
