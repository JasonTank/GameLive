//
//  YXCellViewController.m
//  TRProject
//
//  Created by 王耀先 on 16/6/26.
//  Copyright © 2016年 Tarena. All rights reserved.
//

#import "YXClassViewController.h"

@interface YXClassViewController ()
@property(nonatomic) YXClassViewModel *classVM;
@end

@implementation YXClassViewController

static NSString * const reuseIdentifier = @"Cell";

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"栏目";
    self.collectionView.backgroundColor = [UIColor colorWithRed:238/255.0 green:238/255.0 blue:238/255.0 alpha:1];
    [self.collectionView registerClass:[YXClassCell class] forCellWithReuseIdentifier:reuseIdentifier];
    [self.classVM getDataWithRequestMode:0 completionHandler:^(NSError *error) {
        [self.collectionView reloadData];
    }];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


#pragma mark <UICollectionViewDataSource>


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {

    return self.classVM.numForIndex;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    YXClassCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    cell.titleLabel.text = [self.classVM titleForIndex:indexPath.row];
    [cell.imageView sd_setImageWithURL:[self.classVM iconURLForIndex:indexPath.row]];
    
    return cell;
}

- (YXClassViewModel *)classVM{
    if (!_classVM) {
        _classVM = [YXClassViewModel new];
    }
    return _classVM;
}
@end
