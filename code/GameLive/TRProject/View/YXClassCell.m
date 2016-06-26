//
//  YXClassCell.m
//  TRProject
//
//  Created by 王耀先 on 16/6/26.
//  Copyright © 2016年 Tarena. All rights reserved.
//

#import "YXClassCell.h"

@implementation YXClassCell
- (UIImageView *)imageView{
    if (!_imageView) {
        _imageView = [[UIImageView alloc]init];
        [self.contentView addSubview:_imageView];
        [_imageView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.right.top.equalTo(0);
            make.bottom.equalTo(self.titleLabel.mas_top);
        }];
    }
    return _imageView;
}
                                
- (UILabel *)titleLabel{
    if (!_titleLabel) {
        _titleLabel = [[UILabel alloc]init];
        [self.contentView addSubview:_titleLabel];
        [_titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.right.bottom.equalTo(0);
            make.height.equalTo(33);
        }];
        _titleLabel.textAlignment = NSTextAlignmentCenter;
        _titleLabel.backgroundColor = [UIColor whiteColor];
    }
    return _titleLabel;

}
@end
