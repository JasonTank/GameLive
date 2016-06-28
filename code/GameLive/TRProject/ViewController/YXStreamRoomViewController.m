//
//  YXStreamRoomViewController.m
//  TRProject
//
//  Created by 王耀先 on 16/6/26.
//  Copyright © 2016年 Tarena. All rights reserved.
//

#import "YXStreamRoomViewController.h"
#import "YXStreamRoomCell.h"
#import "YXStreamRoomViewModel.h"
@import AVFoundation;
@import AVKit;
@interface YXStreamRoomViewController ()
@property(nonatomic) YXStreamRoomViewModel *streamRoomVM;
@end

@implementation YXStreamRoomViewController

static NSString * const reuseIdentifier = @"Cell";

- (instancetype)initWithCollectionViewLayout:(UICollectionViewLayout *)layout{
    if (self = [super initWithCollectionViewLayout:layout]) {
        if (self.gameName == nil) {
            self.title = @"直播";
            self.tabBarItem.image = [UIImage imageNamed:@"0015C61D-60D6-4486-B3FD-75A6568C6CF6"];
        }
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.collectionView.backgroundColor = [UIColor whiteColor];
    [self.collectionView registerClass:[YXStreamRoomCell class] forCellWithReuseIdentifier:reuseIdentifier];
    if (self.gameName == nil) {
        self.navigationItem.title = @"直播";
    }else{
        self.navigationItem.title = self.gameName;
    }
    
    [self.streamRoomVM getDataWithRequestMode:VMRequestModeRefresh completionHandler:^(NSError *error) {
        if (error) {
            DDLogError(@"%@", error);
        }else{
            [self.collectionView reloadData];
        }
    }];
    
//    
//    self.collectionView.mj_header = [MJRefreshNormalHeader headerWithRefreshingBlock:^{
//        [self.streamRoomVM getDataWithRequestMode:0 completionHandler:^(NSError *error) {
//            [self.collectionView.mj_header endRefreshing];
//            if (error) {
//                DDLogError(@"%@", error);
//            }else{
//                [self.collectionView reloadData];
//                if (self.streamRoomVM.hasMore) {
//                    [self.collectionView.mj_footer endRefreshing];
//                }else{
//                    [self.collectionView.mj_footer endRefreshingWithNoMoreData];
//                }
//            }
//        }];
//
//        
//    }];
//    [self.collectionView.mj_header beginRefreshing];
//    
//
//    self.collectionView.mj_footer = [MJRefreshAutoStateFooter footerWithRefreshingBlock:^{
//        [self.streamRoomVM getDataWithRequestMode:VMRequestModeMore completionHandler:^(NSError *error) {
//            [self.collectionView.mj_footer endRefreshing];
//        }];
//    }];
    
}



#pragma mark <UICollectionViewDataSource>


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    NSLog(@"%ld", (long)self.streamRoomVM.numForRow);
    return self.streamRoomVM.numForRow;
    
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    YXStreamRoomCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    [cell.coverIV sd_setImageWithURL:[self.streamRoomVM coverURLForRow:indexPath.row]];
    [cell.iconIV sd_setImageWithURL:[self.streamRoomVM iconURLForRow:indexPath.row]];
    cell.titleLabel.text = [self.streamRoomVM titleForRow:indexPath.row];
    cell.nameLabel.text = [self.streamRoomVM titleForRow:indexPath.row];
    cell.spectater.text = [self.streamRoomVM spectaterForRow:indexPath.row];
    
    return cell;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    [collectionView deselectItemAtIndexPath:indexPath animated:YES];
    AVPlayerViewController *vc = [AVPlayerViewController new];
    vc.player = [AVPlayer playerWithURL:[NSString stringWithFormat:kVideoPath,[self.streamRoomVM uidForRow:indexPath.row]].yx_URL];
    [vc.player play];
    [self presentViewController:vc animated:YES completion:nil];
}


-(YXStreamRoomViewModel *)streamRoomVM{
    if (_streamRoomVM) {
        _streamRoomVM = [[YXStreamRoomViewModel alloc]initWithGameName:self.gameName];
    }
    return _streamRoomVM;
}

@end
