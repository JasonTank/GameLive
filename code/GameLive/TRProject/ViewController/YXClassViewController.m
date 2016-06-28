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
    
    self.collectionView.mj_header = [MJRefreshNormalHeader headerWithRefreshingBlock:^{
        
        [self.classVM getDataWithRequestMode:0 completionHandler:^(NSError *error) {
            [self.collectionView.mj_header endRefreshing];
            [self.collectionView reloadData];
        }];
        
    }];
    [self.collectionView.mj_header beginRefreshing];
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


#pragma mark <UICollectionViewDataSource>

-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    [self.collectionView deselectItemAtIndexPath:indexPath animated:YES];
    
    UICollectionViewFlowLayout *streamRoomLayout = [UICollectionViewFlowLayout new];
    streamRoomLayout.minimumLineSpacing = 10;
    streamRoomLayout.minimumInteritemSpacing = 10;
    streamRoomLayout.sectionInset = UIEdgeInsetsMake(10, 10, 10, 10);
    streamRoomLayout.scrollDirection = UICollectionViewScrollDirectionVertical;
    CGFloat streamWidth = ([UIScreen mainScreen].bounds.size.width - 30) / 2;
    CGFloat streamHeigth = streamWidth * 100 / 156 +40;
    streamRoomLayout.itemSize = CGSizeMake(streamWidth, streamHeigth);
    
    YXStreamRoomViewController *streamVC = [[YXStreamRoomViewController alloc]initWithCollectionViewLayout:streamRoomLayout];
    streamVC.hidesBottomBarWhenPushed = YES;
    streamVC.gameName = [self.classVM gameNameForIndex:indexPath.row];
    UIBarButtonItem *btn = [[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"3E9D8024-DD75-47B7-9384-A0A18C3FB2E6.png"] style:UIBarButtonItemStyleDone target:self action:@selector(shwoList:)];
    streamVC.navigationItem.leftBarButtonItem = btn;
    [self.navigationController pushViewController:streamVC animated:YES];
}

- (void)shwoList:sender{
    [self.navigationController popViewControllerAnimated:YES];
}

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
