//
//  YXStreamRoomViewModel.h
//  TRProject
//
//  Created by 王耀先 on 16/6/26.
//  Copyright © 2016年 Tarena. All rights reserved.
//

#import "TRBaseViewModel.h"
#import "YXLiveModel.h"
@interface YXStreamRoomViewModel : TRBaseViewModel
@property(nonatomic) NSInteger page;
@property(nonatomic, readonly, getter=isHasMore) BOOL hasMore;
@property(nonatomic) NSMutableArray<YXLiveLinkObjectModel *> *dataList;
@property(nonatomic) NSInteger numForRow;
@property(nonatomic) NSString *gameName;

-(NSURL *)iconURLForRow:(NSInteger)row;
-(NSURL *)coverURLForRow:(NSInteger)row;
//观众
-(NSString *)spectaterForRow:(NSInteger)row;
-(NSString *)titleForRow:(NSInteger)row;
-(NSString *)nickForRow:(NSInteger)row;
-(NSString *)uidForRow:(NSInteger)row;
-(YXLiveLinkObjectModel *)modelForRow:(NSInteger)row;
- initWithGameName:(NSString *)gameName;
@end